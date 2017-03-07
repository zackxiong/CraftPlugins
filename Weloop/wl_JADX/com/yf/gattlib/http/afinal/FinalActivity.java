package com.yf.gattlib.http.afinal;

import android.app.Activity;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import android.widget.AbsListView;
import com.yf.gattlib.http.afinal.annotation.view.EventListener;
import com.yf.gattlib.http.afinal.annotation.view.Select;
import com.yf.gattlib.http.afinal.annotation.view.ViewInject;
import java.lang.reflect.Field;

/* compiled from: ProGuard */
public abstract class FinalActivity extends Activity {

    /* renamed from: com.yf.gattlib.http.afinal.FinalActivity.1 */
    static /* synthetic */ class ProGuard {
        static final /* synthetic */ int[] $SwitchMap$com$yf$gattlib$http$afinal$FinalActivity$Method;

        static {
            $SwitchMap$com$yf$gattlib$http$afinal$FinalActivity$Method = new int[Method.values().length];
            try {
                $SwitchMap$com$yf$gattlib$http$afinal$FinalActivity$Method[Method.Click.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                $SwitchMap$com$yf$gattlib$http$afinal$FinalActivity$Method[Method.ItemClick.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                $SwitchMap$com$yf$gattlib$http$afinal$FinalActivity$Method[Method.LongClick.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                $SwitchMap$com$yf$gattlib$http$afinal$FinalActivity$Method[Method.itemLongClick.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
        }
    }

    /* compiled from: ProGuard */
    public enum Method {
        Click,
        LongClick,
        ItemClick,
        itemLongClick
    }

    public void setContentView(int i) {
        super.setContentView(i);
        initInjectedView(this);
    }

    public void setContentView(View view, LayoutParams layoutParams) {
        super.setContentView(view, layoutParams);
        initInjectedView(this);
    }

    public void setContentView(View view) {
        super.setContentView(view);
        initInjectedView(this);
    }

    public static void initInjectedView(Activity activity) {
        initInjectedView(activity, activity.getWindow().getDecorView());
    }

    public static void initInjectedView(Object obj, View view) {
        Field[] declaredFields = obj.getClass().getDeclaredFields();
        if (declaredFields != null && declaredFields.length > 0) {
            for (Field field : declaredFields) {
                try {
                    field.setAccessible(true);
                    if (field.get(obj) == null) {
                        ViewInject viewInject = (ViewInject) field.getAnnotation(ViewInject.class);
                        if (viewInject != null) {
                            field.set(obj, view.findViewById(viewInject.id()));
                            setListener(obj, field, viewInject.click(), Method.Click);
                            setListener(obj, field, viewInject.longClick(), Method.LongClick);
                            setListener(obj, field, viewInject.itemClick(), Method.ItemClick);
                            setListener(obj, field, viewInject.itemLongClick(), Method.itemLongClick);
                            Select select = viewInject.select();
                            if (!TextUtils.isEmpty(select.selected())) {
                                setViewSelectListener(obj, field, select.selected(), select.noSelected());
                            }
                        }
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }
    }

    private static void setViewSelectListener(Object obj, Field field, String str, String str2) {
        Object obj2 = field.get(obj);
        if (obj2 instanceof View) {
            ((AbsListView) obj2).setOnItemSelectedListener(new EventListener(obj).select(str).noSelect(str2));
        }
    }

    private static void setListener(Object obj, Field field, String str, Method method) {
        if (str != null && str.trim().length() != 0) {
            Object obj2 = field.get(obj);
            switch (ProGuard.$SwitchMap$com$yf$gattlib$http$afinal$FinalActivity$Method[method.ordinal()]) {
                case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_android_focusable /*1*/:
                    if (obj2 instanceof View) {
                        ((View) obj2).setOnClickListener(new EventListener(obj).click(str));
                    }
                case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_paddingStart /*2*/:
                    if (obj2 instanceof AbsListView) {
                        ((AbsListView) obj2).setOnItemClickListener(new EventListener(obj).itemClick(str));
                    }
                case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_paddingEnd /*3*/:
                    if (obj2 instanceof View) {
                        ((View) obj2).setOnLongClickListener(new EventListener(obj).longClick(str));
                    }
                case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_theme /*4*/:
                    if (obj2 instanceof AbsListView) {
                        ((AbsListView) obj2).setOnItemLongClickListener(new EventListener(obj).itemLongClick(str));
                    }
                default:
            }
        }
    }
}
