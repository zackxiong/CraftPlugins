package android.support.v7.widget;

import android.annotation.TargetApi;
import android.app.SearchableInfo;
import android.content.Context;
import android.content.Intent;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.Drawable.ConstantState;
import android.net.Uri;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.ResultReceiver;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.text.style.ImageSpan;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.KeyEvent.DispatcherState;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.View.OnClickListener;
import android.view.View.OnFocusChangeListener;
import android.view.inputmethod.InputMethodManager;
import android.widget.AutoCompleteTextView;
import android.widget.ImageView;
import java.lang.reflect.Method;
import java.util.WeakHashMap;

/* compiled from: ProGuard */
public class SearchView extends ProGuard implements android.support.v7.p019b.ProGuard {
    static final ProGuard f1432a;
    private static final boolean f1433b;
    private boolean f1434A;
    private int f1435B;
    private boolean f1436C;
    private CharSequence f1437D;
    private boolean f1438E;
    private int f1439F;
    private SearchableInfo f1440G;
    private Bundle f1441H;
    private Runnable f1442I;
    private final Runnable f1443J;
    private Runnable f1444K;
    private final WeakHashMap<String, ConstantState> f1445L;
    private final SearchAutoComplete f1446c;
    private final View f1447d;
    private final View f1448e;
    private final ImageView f1449f;
    private final ImageView f1450g;
    private final ImageView f1451h;
    private final ImageView f1452i;
    private final ImageView f1453j;
    private final Drawable f1454k;
    private final int f1455l;
    private final int f1456m;
    private final Intent f1457n;
    private final Intent f1458o;
    private ProGuard f1459p;
    private ProGuard f1460q;
    private OnFocusChangeListener f1461r;
    private ProGuard f1462s;
    private OnClickListener f1463t;
    private boolean f1464u;
    private boolean f1465v;
    private android.support.v4.widget.ProGuard f1466w;
    private boolean f1467x;
    private CharSequence f1468y;
    private boolean f1469z;

    /* compiled from: ProGuard */
    public static class SearchAutoComplete extends ProGuard {
        private int f1426a;
        private SearchView f1427b;

        public SearchAutoComplete(Context context) {
            this(context, null);
        }

        public SearchAutoComplete(Context context, AttributeSet attributeSet) {
            this(context, attributeSet, 16842859);
        }

        public SearchAutoComplete(Context context, AttributeSet attributeSet, int i) {
            super(context, attributeSet, i);
            this.f1426a = getThreshold();
        }

        void setSearchView(SearchView searchView) {
            this.f1427b = searchView;
        }

        public void setThreshold(int i) {
            super.setThreshold(i);
            this.f1426a = i;
        }

        protected void replaceText(CharSequence charSequence) {
        }

        public void performCompletion() {
        }

        public void onWindowFocusChanged(boolean z) {
            super.onWindowFocusChanged(z);
            if (z && this.f1427b.hasFocus() && getVisibility() == 0) {
                ((InputMethodManager) getContext().getSystemService("input_method")).showSoftInput(this, 0);
                if (SearchView.m2568a(getContext())) {
                    SearchView.f1432a.m2560a(this, true);
                }
            }
        }

        protected void onFocusChanged(boolean z, int i, Rect rect) {
            super.onFocusChanged(z, i, rect);
            this.f1427b.m2589d();
        }

        public boolean enoughToFilter() {
            return this.f1426a <= 0 || super.enoughToFilter();
        }

        public boolean onKeyPreIme(int i, KeyEvent keyEvent) {
            if (i == 4) {
                DispatcherState keyDispatcherState;
                if (keyEvent.getAction() == 0 && keyEvent.getRepeatCount() == 0) {
                    keyDispatcherState = getKeyDispatcherState();
                    if (keyDispatcherState == null) {
                        return true;
                    }
                    keyDispatcherState.startTracking(keyEvent, this);
                    return true;
                } else if (keyEvent.getAction() == 1) {
                    keyDispatcherState = getKeyDispatcherState();
                    if (keyDispatcherState != null) {
                        keyDispatcherState.handleUpEvent(keyEvent);
                    }
                    if (keyEvent.isTracking() && !keyEvent.isCanceled()) {
                        this.f1427b.clearFocus();
                        this.f1427b.setImeVisibility(false);
                        return true;
                    }
                }
            }
            return super.onKeyPreIme(i, keyEvent);
        }
    }

    /* renamed from: android.support.v7.widget.SearchView.a */
    private static class ProGuard {
        private Method f1428a;
        private Method f1429b;
        private Method f1430c;
        private Method f1431d;

        ProGuard() {
            try {
                this.f1428a = AutoCompleteTextView.class.getDeclaredMethod("doBeforeTextChanged", new Class[0]);
                this.f1428a.setAccessible(true);
            } catch (NoSuchMethodException e) {
            }
            try {
                this.f1429b = AutoCompleteTextView.class.getDeclaredMethod("doAfterTextChanged", new Class[0]);
                this.f1429b.setAccessible(true);
            } catch (NoSuchMethodException e2) {
            }
            try {
                this.f1430c = AutoCompleteTextView.class.getMethod("ensureImeVisible", new Class[]{Boolean.TYPE});
                this.f1430c.setAccessible(true);
            } catch (NoSuchMethodException e3) {
            }
            try {
                this.f1431d = InputMethodManager.class.getMethod("showSoftInputUnchecked", new Class[]{Integer.TYPE, ResultReceiver.class});
                this.f1431d.setAccessible(true);
            } catch (NoSuchMethodException e4) {
            }
        }

        void m2559a(AutoCompleteTextView autoCompleteTextView) {
            if (this.f1428a != null) {
                try {
                    this.f1428a.invoke(autoCompleteTextView, new Object[0]);
                } catch (Exception e) {
                }
            }
        }

        void m2561b(AutoCompleteTextView autoCompleteTextView) {
            if (this.f1429b != null) {
                try {
                    this.f1429b.invoke(autoCompleteTextView, new Object[0]);
                } catch (Exception e) {
                }
            }
        }

        void m2560a(AutoCompleteTextView autoCompleteTextView, boolean z) {
            if (this.f1430c != null) {
                try {
                    this.f1430c.invoke(autoCompleteTextView, new Object[]{Boolean.valueOf(z)});
                } catch (Exception e) {
                }
            }
        }
    }

    /* renamed from: android.support.v7.widget.SearchView.b */
    public interface ProGuard {
        boolean m2562a();
    }

    /* renamed from: android.support.v7.widget.SearchView.c */
    public interface ProGuard {
        boolean m2563a(String str);
    }

    /* renamed from: android.support.v7.widget.SearchView.d */
    public interface ProGuard {
    }

    static {
        boolean z;
        if (VERSION.SDK_INT >= 8) {
            z = true;
        } else {
            z = false;
        }
        f1433b = z;
        f1432a = new ProGuard();
    }

    int getSuggestionRowLayout() {
        return this.f1455l;
    }

    int getSuggestionCommitIconResId() {
        return this.f1456m;
    }

    public void setSearchableInfo(SearchableInfo searchableInfo) {
        this.f1440G = searchableInfo;
        if (this.f1440G != null) {
            if (f1433b) {
                m2578l();
            }
            m2577k();
        }
        boolean z = f1433b && m2572e();
        this.f1436C = z;
        if (this.f1436C) {
            this.f1446c.setPrivateImeOptions("nm");
        }
        m2567a(m2588c());
    }

    public void setAppSearchData(Bundle bundle) {
        this.f1441H = bundle;
    }

    public void setImeOptions(int i) {
        this.f1446c.setImeOptions(i);
    }

    public int getImeOptions() {
        return this.f1446c.getImeOptions();
    }

    public void setInputType(int i) {
        this.f1446c.setInputType(i);
    }

    public int getInputType() {
        return this.f1446c.getInputType();
    }

    public boolean requestFocus(int i, Rect rect) {
        if (this.f1434A || !isFocusable()) {
            return false;
        }
        if (m2588c()) {
            return super.requestFocus(i, rect);
        }
        boolean requestFocus = this.f1446c.requestFocus(i, rect);
        if (requestFocus) {
            m2567a(false);
        }
        return requestFocus;
    }

    public void clearFocus() {
        this.f1434A = true;
        setImeVisibility(false);
        super.clearFocus();
        this.f1446c.clearFocus();
        this.f1434A = false;
    }

    public void setOnQueryTextListener(ProGuard proGuard) {
        this.f1459p = proGuard;
    }

    public void setOnCloseListener(ProGuard proGuard) {
        this.f1460q = proGuard;
    }

    public void setOnQueryTextFocusChangeListener(OnFocusChangeListener onFocusChangeListener) {
        this.f1461r = onFocusChangeListener;
    }

    public void setOnSuggestionListener(ProGuard proGuard) {
        this.f1462s = proGuard;
    }

    public void setOnSearchClickListener(OnClickListener onClickListener) {
        this.f1463t = onClickListener;
    }

    public CharSequence getQuery() {
        return this.f1446c.getText();
    }

    public void m2586a(CharSequence charSequence, boolean z) {
        this.f1446c.setText(charSequence);
        if (charSequence != null) {
            this.f1446c.setSelection(this.f1446c.length());
            this.f1437D = charSequence;
        }
        if (z && !TextUtils.isEmpty(charSequence)) {
            m2579m();
        }
    }

    public void setQueryHint(CharSequence charSequence) {
        this.f1468y = charSequence;
        m2577k();
    }

    public CharSequence getQueryHint() {
        if (this.f1468y != null) {
            return this.f1468y;
        }
        if (!f1433b || this.f1440G == null) {
            return null;
        }
        int hintId = this.f1440G.getHintId();
        if (hintId != 0) {
            return getContext().getString(hintId);
        }
        return null;
    }

    public void setIconifiedByDefault(boolean z) {
        if (this.f1464u != z) {
            this.f1464u = z;
            m2567a(z);
            m2577k();
        }
    }

    public void setIconified(boolean z) {
        if (z) {
            m2581o();
        } else {
            m2582p();
        }
    }

    public boolean m2588c() {
        return this.f1465v;
    }

    public void setSubmitButtonEnabled(boolean z) {
        this.f1467x = z;
        m2567a(m2588c());
    }

    public void setQueryRefinementEnabled(boolean z) {
        this.f1469z = z;
        if (this.f1466w instanceof ProGuard) {
            ((ProGuard) this.f1466w).m2678a(z ? 2 : 1);
        }
    }

    public void setSuggestionsAdapter(android.support.v4.widget.ProGuard proGuard) {
        this.f1466w = proGuard;
        this.f1446c.setAdapter(this.f1466w);
    }

    public android.support.v4.widget.ProGuard getSuggestionsAdapter() {
        return this.f1466w;
    }

    public void setMaxWidth(int i) {
        this.f1435B = i;
        requestLayout();
    }

    public int getMaxWidth() {
        return this.f1435B;
    }

    protected void onMeasure(int i, int i2) {
        if (m2588c()) {
            super.onMeasure(i, i2);
            return;
        }
        int mode = MeasureSpec.getMode(i);
        int size = MeasureSpec.getSize(i);
        switch (mode) {
            case Integer.MIN_VALUE:
                if (this.f1435B <= 0) {
                    size = Math.min(getPreferredWidth(), size);
                    break;
                } else {
                    size = Math.min(this.f1435B, size);
                    break;
                }
            case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_android_theme /*0*/:
                if (this.f1435B <= 0) {
                    size = getPreferredWidth();
                    break;
                } else {
                    size = this.f1435B;
                    break;
                }
            case 1073741824:
                if (this.f1435B > 0) {
                    size = Math.min(this.f1435B, size);
                    break;
                }
                break;
        }
        super.onMeasure(MeasureSpec.makeMeasureSpec(size, 1073741824), i2);
    }

    private int getPreferredWidth() {
        return getContext().getResources().getDimensionPixelSize(android.support.v7.appcompat.ProGuard.dimen.abc_search_view_preferred_width);
    }

    private void m2567a(boolean z) {
        boolean z2;
        boolean z3 = true;
        int i = 8;
        this.f1465v = z;
        int i2 = z ? 0 : 8;
        if (TextUtils.isEmpty(this.f1446c.getText())) {
            z2 = false;
        } else {
            z2 = true;
        }
        this.f1449f.setVisibility(i2);
        m2570b(z2);
        View view = this.f1447d;
        if (z) {
            i2 = 8;
        } else {
            i2 = 0;
        }
        view.setVisibility(i2);
        ImageView imageView = this.f1453j;
        if (!this.f1464u) {
            i = 0;
        }
        imageView.setVisibility(i);
        m2575h();
        if (z2) {
            z3 = false;
        }
        m2571c(z3);
        m2574g();
    }

    @TargetApi(8)
    private boolean m2572e() {
        if (this.f1440G == null || !this.f1440G.getVoiceSearchEnabled()) {
            return false;
        }
        Intent intent = null;
        if (this.f1440G.getVoiceSearchLaunchWebSearch()) {
            intent = this.f1457n;
        } else if (this.f1440G.getVoiceSearchLaunchRecognizer()) {
            intent = this.f1458o;
        }
        if (intent == null || getContext().getPackageManager().resolveActivity(intent, 65536) == null) {
            return false;
        }
        return true;
    }

    private boolean m2573f() {
        return (this.f1467x || this.f1436C) && !m2588c();
    }

    private void m2570b(boolean z) {
        int i = 8;
        if (this.f1467x && m2573f() && hasFocus() && (z || !this.f1436C)) {
            i = 0;
        }
        this.f1450g.setVisibility(i);
    }

    private void m2574g() {
        int i = 8;
        if (m2573f() && (this.f1450g.getVisibility() == 0 || this.f1452i.getVisibility() == 0)) {
            i = 0;
        }
        this.f1448e.setVisibility(i);
    }

    private void m2575h() {
        int i = 1;
        int i2 = 0;
        int i3 = !TextUtils.isEmpty(this.f1446c.getText()) ? 1 : 0;
        if (i3 == 0 && (!this.f1464u || this.f1438E)) {
            i = 0;
        }
        ImageView imageView = this.f1451h;
        if (i == 0) {
            i2 = 8;
        }
        imageView.setVisibility(i2);
        Drawable drawable = this.f1451h.getDrawable();
        if (drawable != null) {
            drawable.setState(i3 != 0 ? ENABLED_STATE_SET : EMPTY_STATE_SET);
        }
    }

    private void m2576i() {
        post(this.f1443J);
    }

    protected void onDetachedFromWindow() {
        removeCallbacks(this.f1443J);
        post(this.f1444K);
        super.onDetachedFromWindow();
    }

    private void setImeVisibility(boolean z) {
        if (z) {
            post(this.f1442I);
            return;
        }
        removeCallbacks(this.f1442I);
        InputMethodManager inputMethodManager = (InputMethodManager) getContext().getSystemService("input_method");
        if (inputMethodManager != null) {
            inputMethodManager.hideSoftInputFromWindow(getWindowToken(), 0);
        }
    }

    void m2585a(CharSequence charSequence) {
        setQuery(charSequence);
    }

    private CharSequence m2569b(CharSequence charSequence) {
        if (!this.f1464u || this.f1454k == null) {
            return charSequence;
        }
        int textSize = (int) (((double) this.f1446c.getTextSize()) * 1.25d);
        this.f1454k.setBounds(0, 0, textSize, textSize);
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder("   ");
        spannableStringBuilder.setSpan(new ImageSpan(this.f1454k), 1, 2, 33);
        spannableStringBuilder.append(charSequence);
        return spannableStringBuilder;
    }

    private void m2577k() {
        if (this.f1468y != null) {
            this.f1446c.setHint(m2569b(this.f1468y));
        } else if (!f1433b || this.f1440G == null) {
            this.f1446c.setHint(m2569b((CharSequence) ""));
        } else {
            CharSequence charSequence = null;
            int hintId = this.f1440G.getHintId();
            if (hintId != 0) {
                charSequence = getContext().getString(hintId);
            }
            if (charSequence != null) {
                this.f1446c.setHint(m2569b(charSequence));
            }
        }
    }

    @TargetApi(8)
    private void m2578l() {
        int i = 1;
        this.f1446c.setThreshold(this.f1440G.getSuggestThreshold());
        this.f1446c.setImeOptions(this.f1440G.getImeOptions());
        int inputType = this.f1440G.getInputType();
        if ((inputType & 15) == 1) {
            inputType &= -65537;
            if (this.f1440G.getSuggestAuthority() != null) {
                inputType = (inputType | 65536) | 524288;
            }
        }
        this.f1446c.setInputType(inputType);
        if (this.f1466w != null) {
            this.f1466w.m1556a(null);
        }
        if (this.f1440G.getSuggestAuthority() != null) {
            this.f1466w = new ProGuard(getContext(), this, this.f1440G, this.f1445L);
            this.f1446c.setAdapter(this.f1466w);
            ProGuard proGuard = (ProGuard) this.f1466w;
            if (this.f1469z) {
                i = 2;
            }
            proGuard.m2678a(i);
        }
    }

    private void m2571c(boolean z) {
        int i;
        if (this.f1436C && !m2588c() && z) {
            i = 0;
            this.f1450g.setVisibility(8);
        } else {
            i = 8;
        }
        this.f1452i.setVisibility(i);
    }

    private void m2579m() {
        CharSequence text = this.f1446c.getText();
        if (text != null && TextUtils.getTrimmedLength(text) > 0) {
            if (this.f1459p == null || !this.f1459p.m2563a(text.toString())) {
                if (this.f1440G != null) {
                    m2565a(0, null, text.toString());
                }
                setImeVisibility(false);
                m2580n();
            }
        }
    }

    private void m2580n() {
        this.f1446c.dismissDropDown();
    }

    private void m2581o() {
        if (!TextUtils.isEmpty(this.f1446c.getText())) {
            this.f1446c.setText("");
            this.f1446c.requestFocus();
            setImeVisibility(true);
        } else if (!this.f1464u) {
        } else {
            if (this.f1460q == null || !this.f1460q.m2562a()) {
                clearFocus();
                m2567a(true);
            }
        }
    }

    private void m2582p() {
        m2567a(false);
        this.f1446c.requestFocus();
        setImeVisibility(true);
        if (this.f1463t != null) {
            this.f1463t.onClick(this);
        }
    }

    void m2589d() {
        m2567a(m2588c());
        m2576i();
        if (this.f1446c.hasFocus()) {
            m2583q();
        }
    }

    public void onWindowFocusChanged(boolean z) {
        super.onWindowFocusChanged(z);
        m2576i();
    }

    public void m2587b() {
        m2586a((CharSequence) "", false);
        clearFocus();
        m2567a(true);
        this.f1446c.setImeOptions(this.f1439F);
        this.f1438E = false;
    }

    public void m2584a() {
        if (!this.f1438E) {
            this.f1438E = true;
            this.f1439F = this.f1446c.getImeOptions();
            this.f1446c.setImeOptions(this.f1439F | 33554432);
            this.f1446c.setText("");
            setIconified(false);
        }
    }

    private void setQuery(CharSequence charSequence) {
        this.f1446c.setText(charSequence);
        this.f1446c.setSelection(TextUtils.isEmpty(charSequence) ? 0 : charSequence.length());
    }

    private void m2565a(int i, String str, String str2) {
        getContext().startActivity(m2564a("android.intent.action.SEARCH", null, null, str2, i, str));
    }

    private Intent m2564a(String str, Uri uri, String str2, String str3, int i, String str4) {
        Intent intent = new Intent(str);
        intent.addFlags(268435456);
        if (uri != null) {
            intent.setData(uri);
        }
        intent.putExtra("user_query", this.f1437D);
        if (str3 != null) {
            intent.putExtra("query", str3);
        }
        if (str2 != null) {
            intent.putExtra("intent_extra_data_key", str2);
        }
        if (this.f1441H != null) {
            intent.putExtra("app_data", this.f1441H);
        }
        if (i != 0) {
            intent.putExtra("action_key", i);
            intent.putExtra("action_msg", str4);
        }
        if (f1433b) {
            intent.setComponent(this.f1440G.getSearchActivity());
        }
        return intent;
    }

    private void m2583q() {
        f1432a.m2559a(this.f1446c);
        f1432a.m2561b(this.f1446c);
    }

    static boolean m2568a(Context context) {
        return context.getResources().getConfiguration().orientation == 2;
    }
}
