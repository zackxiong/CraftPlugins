package com.yf.gattlib.http.afinal.core;

import android.os.Handler;
import android.os.Message;
import android.os.Process;
import android.util.Log;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.Callable;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;
import java.util.concurrent.FutureTask;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.ThreadPoolExecutor.DiscardOldestPolicy;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;

/* compiled from: ProGuard */
public abstract class AsyncTask<Params, Progress, Result> {
    private static final int CORE_POOL_SIZE = 5;
    public static final Executor DUAL_THREAD_EXECUTOR;
    private static final int KEEP_ALIVE = 1;
    private static final String LOG_TAG = "AsyncTask";
    private static final int MAXIMUM_POOL_SIZE = 128;
    private static final int MESSAGE_POST_PROGRESS = 2;
    private static final int MESSAGE_POST_RESULT = 1;
    public static final Executor SERIAL_EXECUTOR;
    public static final Executor THREAD_POOL_EXECUTOR;
    private static volatile Executor sDefaultExecutor;
    private static final InternalHandler sHandler;
    private static final BlockingQueue<Runnable> sPoolWorkQueue;
    private static final ThreadFactory sThreadFactory;
    private final AtomicBoolean mCancelled;
    private final FutureTask<Result> mFuture;
    private volatile Status mStatus;
    private final AtomicBoolean mTaskInvoked;
    private final WorkerRunnable<Params, Result> mWorker;

    /* renamed from: com.yf.gattlib.http.afinal.core.AsyncTask.1 */
    final class ProGuard implements ThreadFactory {
        private final AtomicInteger mCount;

        ProGuard() {
            this.mCount = new AtomicInteger(AsyncTask.MESSAGE_POST_RESULT);
        }

        public Thread newThread(Runnable runnable) {
            Thread thread = new Thread(runnable, "AsyncTask #" + this.mCount.getAndIncrement());
            thread.setPriority(4);
            return thread;
        }
    }

    /* compiled from: ProGuard */
    private static abstract class WorkerRunnable<Params, Result> implements Callable<Result> {
        Params[] mParams;

        private WorkerRunnable() {
        }
    }

    /* renamed from: com.yf.gattlib.http.afinal.core.AsyncTask.2 */
    class ProGuard extends WorkerRunnable<Params, Result> {
        ProGuard() {
            super();
        }

        public Result call() {
            AsyncTask.this.mTaskInvoked.set(true);
            Process.setThreadPriority(10);
            return AsyncTask.this.postResult(AsyncTask.this.doInBackground(this.mParams));
        }
    }

    /* renamed from: com.yf.gattlib.http.afinal.core.AsyncTask.3 */
    class ProGuard extends FutureTask<Result> {
        ProGuard(Callable callable) {
            super(callable);
        }

        protected void done() {
            try {
                AsyncTask.this.postResultIfNotInvoked(get());
            } catch (Throwable e) {
                Log.w(AsyncTask.LOG_TAG, e);
            } catch (ExecutionException e2) {
                throw new RuntimeException("An error occured while executing doInBackground()", e2.getCause());
            } catch (CancellationException e3) {
                AsyncTask.this.postResultIfNotInvoked(null);
            }
        }
    }

    /* renamed from: com.yf.gattlib.http.afinal.core.AsyncTask.4 */
    static /* synthetic */ class ProGuard {
        static final /* synthetic */ int[] $SwitchMap$com$yf$gattlib$http$afinal$core$AsyncTask$Status;

        static {
            $SwitchMap$com$yf$gattlib$http$afinal$core$AsyncTask$Status = new int[Status.values().length];
            try {
                $SwitchMap$com$yf$gattlib$http$afinal$core$AsyncTask$Status[Status.RUNNING.ordinal()] = AsyncTask.MESSAGE_POST_RESULT;
            } catch (NoSuchFieldError e) {
            }
            try {
                $SwitchMap$com$yf$gattlib$http$afinal$core$AsyncTask$Status[Status.FINISHED.ordinal()] = AsyncTask.MESSAGE_POST_PROGRESS;
            } catch (NoSuchFieldError e2) {
            }
        }
    }

    /* compiled from: ProGuard */
    private static class AsyncTaskResult<Data> {
        final Data[] mData;
        final AsyncTask mTask;

        AsyncTaskResult(AsyncTask asyncTask, Data... dataArr) {
            this.mTask = asyncTask;
            this.mData = dataArr;
        }
    }

    /* compiled from: ProGuard */
    private static class InternalHandler extends Handler {
        private InternalHandler() {
        }

        public void handleMessage(Message message) {
            AsyncTaskResult asyncTaskResult = (AsyncTaskResult) message.obj;
            switch (message.what) {
                case AsyncTask.MESSAGE_POST_RESULT /*1*/:
                    asyncTaskResult.mTask.finish(asyncTaskResult.mData[0]);
                case AsyncTask.MESSAGE_POST_PROGRESS /*2*/:
                    asyncTaskResult.mTask.onProgressUpdate(asyncTaskResult.mData);
                default:
            }
        }
    }

    /* compiled from: ProGuard */
    private static class SerialExecutor implements Executor {
        Runnable mActive;
        final ArrayDeque<Runnable> mTasks;

        /* renamed from: com.yf.gattlib.http.afinal.core.AsyncTask.SerialExecutor.1 */
        class ProGuard implements Runnable {
            final /* synthetic */ Runnable val$r;

            ProGuard(Runnable runnable) {
                this.val$r = runnable;
            }

            public void run() {
                try {
                    this.val$r.run();
                } finally {
                    SerialExecutor.this.scheduleNext();
                }
            }
        }

        private SerialExecutor() {
            this.mTasks = new ArrayDeque();
        }

        public synchronized void execute(Runnable runnable) {
            this.mTasks.offer(new ProGuard(runnable));
            if (this.mActive == null) {
                scheduleNext();
            }
        }

        protected synchronized void scheduleNext() {
            Runnable runnable = (Runnable) this.mTasks.poll();
            this.mActive = runnable;
            if (runnable != null) {
                AsyncTask.THREAD_POOL_EXECUTOR.execute(this.mActive);
            }
        }
    }

    /* compiled from: ProGuard */
    public enum Status {
        PENDING,
        RUNNING,
        FINISHED
    }

    protected abstract Result doInBackground(Params... paramsArr);

    static {
        sThreadFactory = new ProGuard();
        sPoolWorkQueue = new LinkedBlockingQueue(10);
        THREAD_POOL_EXECUTOR = new ThreadPoolExecutor(CORE_POOL_SIZE, MAXIMUM_POOL_SIZE, 1, TimeUnit.SECONDS, sPoolWorkQueue, sThreadFactory, new DiscardOldestPolicy());
        SERIAL_EXECUTOR = new SerialExecutor();
        DUAL_THREAD_EXECUTOR = Executors.newFixedThreadPool(3, sThreadFactory);
        sHandler = new InternalHandler();
        sDefaultExecutor = SERIAL_EXECUTOR;
    }

    public static void init() {
        sHandler.getLooper();
    }

    public static void setDefaultExecutor(Executor executor) {
        sDefaultExecutor = executor;
    }

    public AsyncTask() {
        this.mStatus = Status.PENDING;
        this.mCancelled = new AtomicBoolean();
        this.mTaskInvoked = new AtomicBoolean();
        this.mWorker = new ProGuard();
        this.mFuture = new ProGuard(this.mWorker);
    }

    private void postResultIfNotInvoked(Result result) {
        if (!this.mTaskInvoked.get()) {
            postResult(result);
        }
    }

    private Result postResult(Result result) {
        InternalHandler internalHandler = sHandler;
        Object[] objArr = new Object[MESSAGE_POST_RESULT];
        objArr[0] = result;
        internalHandler.obtainMessage(MESSAGE_POST_RESULT, new AsyncTaskResult(this, objArr)).sendToTarget();
        return result;
    }

    public final Status getStatus() {
        return this.mStatus;
    }

    protected void onPreExecute() {
    }

    protected void onPostExecute(Result result) {
    }

    protected void onProgressUpdate(Progress... progressArr) {
    }

    protected void onCancelled(Result result) {
        onCancelled();
    }

    protected void onCancelled() {
    }

    public final boolean isCancelled() {
        return this.mCancelled.get();
    }

    public final boolean cancel(boolean z) {
        this.mCancelled.set(true);
        return this.mFuture.cancel(z);
    }

    public final Result get() {
        return this.mFuture.get();
    }

    public final Result get(long j, TimeUnit timeUnit) {
        return this.mFuture.get(j, timeUnit);
    }

    public final AsyncTask<Params, Progress, Result> execute(Params... paramsArr) {
        return executeOnExecutor(sDefaultExecutor, paramsArr);
    }

    public final AsyncTask<Params, Progress, Result> executeOnExecutor(Executor executor, Params... paramsArr) {
        if (this.mStatus != Status.PENDING) {
            switch (ProGuard.$SwitchMap$com$yf$gattlib$http$afinal$core$AsyncTask$Status[this.mStatus.ordinal()]) {
                case MESSAGE_POST_RESULT /*1*/:
                    throw new IllegalStateException("Cannot execute task: the task is already running.");
                case MESSAGE_POST_PROGRESS /*2*/:
                    throw new IllegalStateException("Cannot execute task: the task has already been executed (a task can be executed only once)");
            }
        }
        this.mStatus = Status.RUNNING;
        onPreExecute();
        this.mWorker.mParams = paramsArr;
        executor.execute(this.mFuture);
        return this;
    }

    public static void execute(Runnable runnable) {
        sDefaultExecutor.execute(runnable);
    }

    protected final void publishProgress(Progress... progressArr) {
        if (!isCancelled()) {
            sHandler.obtainMessage(MESSAGE_POST_PROGRESS, new AsyncTaskResult(this, progressArr)).sendToTarget();
        }
    }

    private void finish(Result result) {
        if (isCancelled()) {
            onCancelled(result);
        } else {
            onPostExecute(result);
        }
        this.mStatus = Status.FINISHED;
    }
}
