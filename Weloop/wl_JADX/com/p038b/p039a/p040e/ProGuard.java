package com.p038b.p039a.p040e;

import java.io.Serializable;
import java.lang.reflect.Array;
import java.util.AbstractQueue;
import java.util.Collection;
import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.ReentrantLock;

/* renamed from: com.b.a.e.i */
public class ProGuard<E> extends AbstractQueue<E> implements Serializable, BlockingQueue<E> {
    transient ProGuard<E> f2804a;
    private final int f2805b;
    private final AtomicInteger f2806c;
    private transient ProGuard<E> f2807d;
    private final ReentrantLock f2808e;
    private final Condition f2809f;
    private final ReentrantLock f2810g;
    private final Condition f2811h;

    /* renamed from: com.b.a.e.i.a */
    private class ProGuard implements Iterator<E> {
        final /* synthetic */ ProGuard f2800a;
        private ProGuard<E> f2801b;
        private ProGuard<E> f2802c;
        private E f2803d;

        ProGuard(ProGuard proGuard) {
            this.f2800a = proGuard;
            proGuard.m4083a();
            try {
                this.f2801b = proGuard.f2804a.f2778a;
                if (this.f2801b != null) {
                    this.f2803d = this.f2801b.m4075b();
                }
                proGuard.m4085b();
            } catch (Throwable th) {
                proGuard.m4085b();
            }
        }

        public boolean hasNext() {
            return this.f2801b != null;
        }

        private ProGuard<E> m4077a(ProGuard<E> proGuard) {
            while (true) {
                ProGuard<E> proGuard2 = proGuard.f2778a;
                if (proGuard2 == proGuard) {
                    return this.f2800a.f2804a.f2778a;
                }
                if (proGuard2 == null || proGuard2.m4075b() != null) {
                    return proGuard2;
                }
                proGuard = proGuard2;
            }
        }

        public E next() {
            this.f2800a.m4083a();
            E e;
            try {
                if (this.f2801b == null) {
                    throw new NoSuchElementException();
                }
                e = this.f2803d;
                this.f2802c = this.f2801b;
                this.f2801b = m4077a(this.f2801b);
                this.f2803d = this.f2801b == null ? null : this.f2801b.m4075b();
                return e;
            } finally {
                e = this.f2800a;
                e.m4085b();
            }
        }

        public void remove() {
            if (this.f2802c == null) {
                throw new IllegalStateException();
            }
            this.f2800a.m4083a();
            try {
                ProGuard proGuard = this.f2802c;
                this.f2802c = null;
                ProGuard proGuard2 = this.f2800a.f2804a;
                for (ProGuard proGuard3 = proGuard2.f2778a; proGuard3 != null; proGuard3 = proGuard3.f2778a) {
                    if (proGuard3 == proGuard) {
                        this.f2800a.m4084a(proGuard3, proGuard2);
                        break;
                    }
                    proGuard2 = proGuard3;
                }
                this.f2800a.m4085b();
            } catch (Throwable th) {
                this.f2800a.m4085b();
            }
        }
    }

    private void m4080c() {
        ReentrantLock reentrantLock = this.f2808e;
        reentrantLock.lock();
        try {
            this.f2809f.signal();
        } finally {
            reentrantLock.unlock();
        }
    }

    private void m4081d() {
        ReentrantLock reentrantLock = this.f2810g;
        reentrantLock.lock();
        try {
            this.f2811h.signal();
        } finally {
            reentrantLock.unlock();
        }
    }

    private synchronized E m4078a(ProGuard<E> proGuard) {
        E e;
        if (proGuard == null) {
            e = m4082e();
        } else {
            m4079b(proGuard);
            e = null;
        }
        return e;
    }

    private void m4079b(ProGuard<E> proGuard) {
        Object obj;
        for (ProGuard proGuard2 = this.f2804a; proGuard2.f2778a != null; proGuard2 = proGuard2.f2778a) {
            ProGuard proGuard3 = proGuard2.f2778a;
            if (proGuard3.m4073a().ordinal() > proGuard.m4073a().ordinal()) {
                proGuard2.f2778a = proGuard;
                proGuard.f2778a = proGuard3;
                obj = 1;
                break;
            }
        }
        obj = null;
        if (obj == null) {
            this.f2807d.f2778a = proGuard;
            this.f2807d = proGuard;
        }
    }

    private E m4082e() {
        ProGuard proGuard = this.f2804a;
        ProGuard proGuard2 = proGuard.f2778a;
        proGuard.f2778a = proGuard;
        this.f2804a = proGuard2;
        E b = proGuard2.m4075b();
        proGuard2.m4074a(null);
        return b;
    }

    void m4083a() {
        this.f2810g.lock();
        this.f2808e.lock();
    }

    void m4085b() {
        this.f2808e.unlock();
        this.f2810g.unlock();
    }

    public ProGuard() {
        this(Integer.MAX_VALUE);
    }

    public ProGuard(int i) {
        this.f2806c = new AtomicInteger();
        this.f2808e = new ReentrantLock();
        this.f2809f = this.f2808e.newCondition();
        this.f2810g = new ReentrantLock();
        this.f2811h = this.f2810g.newCondition();
        if (i <= 0) {
            throw new IllegalArgumentException();
        }
        this.f2805b = i;
        ProGuard proGuard = new ProGuard(null);
        this.f2804a = proGuard;
        this.f2807d = proGuard;
    }

    public int size() {
        return this.f2806c.get();
    }

    public int remainingCapacity() {
        return this.f2805b - this.f2806c.get();
    }

    public void put(E e) {
        if (e == null) {
            throw new NullPointerException();
        }
        ProGuard proGuard = new ProGuard(e);
        ReentrantLock reentrantLock = this.f2810g;
        AtomicInteger atomicInteger = this.f2806c;
        reentrantLock.lockInterruptibly();
        while (atomicInteger.get() == this.f2805b) {
            try {
                this.f2811h.await();
            } catch (Throwable th) {
                reentrantLock.unlock();
            }
        }
        m4078a(proGuard);
        int andIncrement = atomicInteger.getAndIncrement();
        if (andIncrement + 1 < this.f2805b) {
            this.f2811h.signal();
        }
        reentrantLock.unlock();
        if (andIncrement == 0) {
            m4080c();
        }
    }

    public boolean offer(E e, long j, TimeUnit timeUnit) {
        if (e == null) {
            throw new NullPointerException();
        }
        long toNanos = timeUnit.toNanos(j);
        ReentrantLock reentrantLock = this.f2810g;
        AtomicInteger atomicInteger = this.f2806c;
        reentrantLock.lockInterruptibly();
        while (atomicInteger.get() == this.f2805b) {
            try {
                if (toNanos <= 0) {
                    return false;
                }
                toNanos = this.f2811h.awaitNanos(toNanos);
            } finally {
                reentrantLock.unlock();
            }
        }
        m4078a(new ProGuard(e));
        int andIncrement = atomicInteger.getAndIncrement();
        if (andIncrement + 1 < this.f2805b) {
            this.f2811h.signal();
        }
        reentrantLock.unlock();
        if (andIncrement == 0) {
            m4080c();
        }
        return true;
    }

    public boolean offer(E e) {
        if (e == null) {
            throw new NullPointerException();
        }
        AtomicInteger atomicInteger = this.f2806c;
        if (atomicInteger.get() == this.f2805b) {
            return false;
        }
        int i = -1;
        ProGuard proGuard = new ProGuard(e);
        ReentrantLock reentrantLock = this.f2810g;
        reentrantLock.lock();
        try {
            boolean z;
            if (atomicInteger.get() < this.f2805b) {
                m4078a(proGuard);
                i = atomicInteger.getAndIncrement();
                if (i + 1 < this.f2805b) {
                    this.f2811h.signal();
                }
            }
            reentrantLock.unlock();
            if (i == 0) {
                m4080c();
            }
            if (i >= 0) {
                z = true;
            } else {
                z = false;
            }
            return z;
        } catch (Throwable th) {
            reentrantLock.unlock();
        }
    }

    public E take() {
        AtomicInteger atomicInteger = this.f2806c;
        ReentrantLock reentrantLock = this.f2808e;
        reentrantLock.lockInterruptibly();
        while (atomicInteger.get() == 0) {
            try {
                this.f2809f.await();
            } catch (Throwable th) {
                reentrantLock.unlock();
            }
        }
        E a = m4078a(null);
        int andDecrement = atomicInteger.getAndDecrement();
        if (andDecrement > 1) {
            this.f2809f.signal();
        }
        reentrantLock.unlock();
        if (andDecrement == this.f2805b) {
            m4081d();
        }
        return a;
    }

    public E poll(long j, TimeUnit timeUnit) {
        E e = null;
        long toNanos = timeUnit.toNanos(j);
        AtomicInteger atomicInteger = this.f2806c;
        ReentrantLock reentrantLock = this.f2808e;
        reentrantLock.lockInterruptibly();
        while (atomicInteger.get() == 0) {
            try {
                if (toNanos <= 0) {
                    break;
                }
                toNanos = this.f2809f.awaitNanos(toNanos);
            } finally {
                reentrantLock.unlock();
            }
        }
        e = m4078a(null);
        int andDecrement = atomicInteger.getAndDecrement();
        if (andDecrement > 1) {
            this.f2809f.signal();
        }
        reentrantLock.unlock();
        if (andDecrement == this.f2805b) {
            m4081d();
        }
        return e;
    }

    public E poll() {
        E e = null;
        AtomicInteger atomicInteger = this.f2806c;
        if (atomicInteger.get() != 0) {
            int i = -1;
            ReentrantLock reentrantLock = this.f2808e;
            reentrantLock.lock();
            try {
                if (atomicInteger.get() > 0) {
                    e = m4078a(null);
                    i = atomicInteger.getAndDecrement();
                    if (i > 1) {
                        this.f2809f.signal();
                    }
                }
                reentrantLock.unlock();
                if (i == this.f2805b) {
                    m4081d();
                }
            } catch (Throwable th) {
                reentrantLock.unlock();
            }
        }
        return e;
    }

    public E peek() {
        E e = null;
        if (this.f2806c.get() != 0) {
            ReentrantLock reentrantLock = this.f2808e;
            reentrantLock.lock();
            try {
                ProGuard proGuard = this.f2804a.f2778a;
                if (proGuard != null) {
                    e = proGuard.m4075b();
                    reentrantLock.unlock();
                }
            } finally {
                reentrantLock.unlock();
            }
        }
        return e;
    }

    void m4084a(ProGuard<E> proGuard, ProGuard<E> proGuard2) {
        proGuard.m4074a(null);
        proGuard2.f2778a = proGuard.f2778a;
        if (this.f2807d == proGuard) {
            this.f2807d = proGuard2;
        }
        if (this.f2806c.getAndDecrement() == this.f2805b) {
            this.f2811h.signal();
        }
    }

    public boolean remove(Object obj) {
        if (obj == null) {
            return false;
        }
        m4083a();
        try {
            ProGuard proGuard = this.f2804a;
            for (ProGuard proGuard2 = proGuard.f2778a; proGuard2 != null; proGuard2 = proGuard2.f2778a) {
                if (obj.equals(proGuard2.m4075b())) {
                    m4084a(proGuard2, proGuard);
                    return true;
                }
                proGuard = proGuard2;
            }
            m4085b();
            return false;
        } finally {
            m4085b();
        }
    }

    public boolean contains(Object obj) {
        if (obj == null) {
            return false;
        }
        m4083a();
        try {
            for (ProGuard proGuard = this.f2804a.f2778a; proGuard != null; proGuard = proGuard.f2778a) {
                if (obj.equals(proGuard.m4075b())) {
                    return true;
                }
            }
            m4085b();
            return false;
        } finally {
            m4085b();
        }
    }

    public Object[] toArray() {
        m4083a();
        try {
            Object[] objArr = new Object[this.f2806c.get()];
            int i = 0;
            ProGuard proGuard = this.f2804a.f2778a;
            while (proGuard != null) {
                int i2 = i + 1;
                objArr[i] = proGuard.m4075b();
                proGuard = proGuard.f2778a;
                i = i2;
            }
            return objArr;
        } finally {
            m4085b();
        }
    }

    public <T> T[] toArray(T[] tArr) {
        m4083a();
        try {
            int i = this.f2806c.get();
            if (tArr.length < i) {
                tArr = (Object[]) Array.newInstance(tArr.getClass().getComponentType(), i);
            }
            int i2 = 0;
            ProGuard proGuard = this.f2804a.f2778a;
            while (proGuard != null) {
                int i3 = i2 + 1;
                tArr[i2] = proGuard.m4075b();
                proGuard = proGuard.f2778a;
                i2 = i3;
            }
            if (tArr.length > i2) {
                tArr[i2] = null;
            }
            m4085b();
            return tArr;
        } catch (Throwable th) {
            m4085b();
        }
    }

    public void clear() {
        m4083a();
        try {
            ProGuard proGuard = this.f2804a;
            while (true) {
                ProGuard proGuard2 = proGuard.f2778a;
                if (proGuard2 == null) {
                    break;
                }
                proGuard.f2778a = proGuard;
                proGuard2.m4074a(null);
                proGuard = proGuard2;
            }
            this.f2804a = this.f2807d;
            if (this.f2806c.getAndSet(0) == this.f2805b) {
                this.f2811h.signal();
            }
            m4085b();
        } catch (Throwable th) {
            m4085b();
        }
    }

    public int drainTo(Collection<? super E> collection) {
        return drainTo(collection, Integer.MAX_VALUE);
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public int drainTo(java.util.Collection<? super E> r10, int r11) {
        /*
        r9 = this;
        r0 = 1;
        r1 = 0;
        if (r10 != 0) goto L_0x000a;
    L_0x0004:
        r0 = new java.lang.NullPointerException;
        r0.<init>();
        throw r0;
    L_0x000a:
        if (r10 != r9) goto L_0x0012;
    L_0x000c:
        r0 = new java.lang.IllegalArgumentException;
        r0.<init>();
        throw r0;
    L_0x0012:
        if (r11 > 0) goto L_0x0015;
    L_0x0014:
        return r1;
    L_0x0015:
        r6 = r9.f2808e;
        r6.lock();
        r2 = r9.f2806c;	 Catch:{ all -> 0x0078 }
        r2 = r2.get();	 Catch:{ all -> 0x0078 }
        r2 = java.lang.Math.min(r11, r2);	 Catch:{ all -> 0x0078 }
        r3 = r9.f2804a;	 Catch:{ all -> 0x0078 }
        r4 = r3;
        r3 = r1;
    L_0x0028:
        if (r3 >= r2) goto L_0x003d;
    L_0x002a:
        r5 = r4.f2778a;	 Catch:{ all -> 0x0058 }
        r7 = r5.m4075b();	 Catch:{ all -> 0x0058 }
        r10.add(r7);	 Catch:{ all -> 0x0058 }
        r7 = 0;
        r5.m4074a(r7);	 Catch:{ all -> 0x0058 }
        r4.f2778a = r4;	 Catch:{ all -> 0x0058 }
        r3 = r3 + 1;
        r4 = r5;
        goto L_0x0028;
    L_0x003d:
        if (r3 <= 0) goto L_0x007c;
    L_0x003f:
        r9.f2804a = r4;	 Catch:{ all -> 0x0078 }
        r4 = r9.f2806c;	 Catch:{ all -> 0x0078 }
        r3 = -r3;
        r3 = r4.getAndAdd(r3);	 Catch:{ all -> 0x0078 }
        r4 = r9.f2805b;	 Catch:{ all -> 0x0078 }
        if (r3 != r4) goto L_0x0056;
    L_0x004c:
        r6.unlock();
        if (r0 == 0) goto L_0x0054;
    L_0x0051:
        r9.m4081d();
    L_0x0054:
        r1 = r2;
        goto L_0x0014;
    L_0x0056:
        r0 = r1;
        goto L_0x004c;
    L_0x0058:
        r2 = move-exception;
        if (r3 <= 0) goto L_0x007a;
    L_0x005b:
        r9.f2804a = r4;	 Catch:{ all -> 0x0078 }
        r4 = r9.f2806c;	 Catch:{ all -> 0x0078 }
        r3 = -r3;
        r3 = r4.getAndAdd(r3);	 Catch:{ all -> 0x0078 }
        r4 = r9.f2805b;	 Catch:{ all -> 0x0078 }
        if (r3 != r4) goto L_0x0076;
    L_0x0068:
        throw r2;	 Catch:{ all -> 0x0069 }
    L_0x0069:
        r1 = move-exception;
        r8 = r1;
        r1 = r0;
        r0 = r8;
    L_0x006d:
        r6.unlock();
        if (r1 == 0) goto L_0x0075;
    L_0x0072:
        r9.m4081d();
    L_0x0075:
        throw r0;
    L_0x0076:
        r0 = r1;
        goto L_0x0068;
    L_0x0078:
        r0 = move-exception;
        goto L_0x006d;
    L_0x007a:
        r0 = r1;
        goto L_0x0068;
    L_0x007c:
        r0 = r1;
        goto L_0x004c;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.b.a.e.i.drainTo(java.util.Collection, int):int");
    }

    public Iterator<E> iterator() {
        return new ProGuard(this);
    }
}
