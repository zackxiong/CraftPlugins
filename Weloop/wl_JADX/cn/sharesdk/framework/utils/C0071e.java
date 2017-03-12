package cn.sharesdk.framework.utils;

import android.content.Context;
import android.content.Intent;
import android.util.Log;
import com.umeng.update.ProGuard;

/* renamed from: cn.sharesdk.framework.utils.e */
public class C0071e {
    protected static C0069a f2102a;
    protected static C0070b f2103b;
    private static Context f2104c;
    private static String f2105d;

    /* renamed from: cn.sharesdk.framework.utils.e.a */
    public static class C0069a {
        protected int f2099a;
        protected String f2100b;
        protected String f2101c;

        protected C0069a() {
            this.f2099a = 7;
            this.f2100b = "";
            this.f2101c = "";
        }
    }

    /* renamed from: cn.sharesdk.framework.utils.e.b */
    public static class C0070b {
        protected static String m3256a(int i) {
            if (C0071e.f2102a.f2099a <= 3) {
                StackTraceElement[] stackTrace = Thread.currentThread().getStackTrace();
                if (i >= 0 && i < stackTrace.length) {
                    StackTraceElement stackTraceElement = stackTrace[i];
                    String fileName = stackTraceElement.getFileName();
                    fileName = (fileName == null || fileName.length() <= 0) ? stackTraceElement.getClassName() : C0071e.f2102a.f2101c + "/" + fileName;
                    int lineNumber = stackTraceElement.getLineNumber();
                    String valueOf = String.valueOf(lineNumber);
                    if (lineNumber < 0) {
                        valueOf = stackTraceElement.getMethodName();
                        if (valueOf == null || valueOf.length() <= 0) {
                            valueOf = "Unknown Source";
                        }
                    }
                    return fileName + "(" + valueOf + ")";
                }
            }
            return C0071e.f2102a.f2101c;
        }

        public int m3257a(int i, String str) {
            return Log.println(i, C0070b.m3256a(5), m3258a(str));
        }

        protected String m3258a(String str) {
            if (C0071e.f2102a.f2099a > 3) {
                return str;
            }
            return String.format("%s %s", new Object[]{Thread.currentThread().getName(), str});
        }

        public int m3259b(int i, String str) {
            if (C0071e.f2104c != null) {
                try {
                    Intent intent = new Intent();
                    intent.setAction("cn.sharesdk.log");
                    intent.putExtra(ProGuard.f5476d, C0071e.f2105d);
                    intent.putExtra("priority", i);
                    intent.putExtra("msg", str);
                    C0071e.f2104c.sendBroadcast(intent);
                } catch (Throwable th) {
                }
            }
            return 0;
        }
    }

    static {
        f2102a = new C0069a();
        f2103b = new C0070b();
    }

    public static int m3260a(Object obj, Object... objArr) {
        String obj2;
        if (f2102a.f2099a > 3) {
            obj2 = obj.toString();
            if (objArr.length > 0) {
                obj2 = String.format(obj2, objArr);
            }
            return f2103b.m3259b(3, obj2);
        }
        obj2 = obj.toString();
        if (objArr.length > 0) {
            obj2 = String.format(obj2, objArr);
        }
        return f2103b.m3257a(3, obj2);
    }

    public static int m3261a(Throwable th) {
        return f2102a.f2099a <= 3 ? f2103b.m3257a(3, Log.getStackTraceString(th)) : f2103b.m3259b(3, Log.getStackTraceString(th));
    }

    public static int m3262a(Throwable th, Object obj, Object... objArr) {
        String obj2;
        if (f2102a.f2099a > 6) {
            obj2 = obj.toString();
            StringBuilder stringBuilder = new StringBuilder();
            if (objArr.length > 0) {
                obj2 = String.format(obj2, objArr);
            }
            return f2103b.m3259b(6, stringBuilder.append(obj2).append('\n').append(Log.getStackTraceString(th)).toString());
        }
        obj2 = obj.toString();
        stringBuilder = new StringBuilder();
        if (objArr.length > 0) {
            obj2 = String.format(obj2, objArr);
        }
        return f2103b.m3257a(6, stringBuilder.append(obj2).append('\n').append(Log.getStackTraceString(th)).toString());
    }

    public static void m3264a(Context context) {
        f2104c = context.getApplicationContext();
        f2105d = C0066b.m3214a(context).m3239r();
    }

    public static int m3265b(Object obj, Object... objArr) {
        String obj2;
        if (f2102a.f2099a > 4) {
            obj2 = obj.toString();
            if (objArr.length > 0) {
                obj2 = String.format(obj2, objArr);
            }
            return f2103b.m3259b(4, obj2);
        }
        obj2 = obj.toString();
        if (objArr.length > 0) {
            obj2 = String.format(obj2, objArr);
        }
        return f2103b.m3257a(4, obj2);
    }

    public static int m3266b(Throwable th) {
        return f2102a.f2099a <= 5 ? f2103b.m3257a(5, Log.getStackTraceString(th)) : 0;
    }

    public static int m3268c(Object obj, Object... objArr) {
        String obj2;
        if (f2102a.f2099a > 6) {
            obj2 = obj.toString();
            if (objArr.length > 0) {
                obj2 = String.format(obj2, objArr);
            }
            return f2103b.m3259b(6, obj2);
        }
        obj2 = obj.toString();
        if (objArr.length > 0) {
            obj2 = String.format(obj2, objArr);
        }
        return f2103b.m3257a(6, obj2);
    }

    public static int m3269c(Throwable th) {
        return f2102a.f2099a <= 6 ? f2103b.m3257a(6, Log.getStackTraceString(th)) : f2103b.m3259b(6, Log.getStackTraceString(th));
    }
}
