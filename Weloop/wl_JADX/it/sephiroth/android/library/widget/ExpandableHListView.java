package it.sephiroth.android.library.widget;

import android.annotation.TargetApi;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.view.ContextMenu.ContextMenuInfo;
import android.view.Gravity;
import android.view.View;
import android.view.View.BaseSavedState;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.ExpandableListAdapter;
import android.widget.ListAdapter;
import java.util.ArrayList;

/* compiled from: ProGuard */
public class ExpandableHListView extends ProGuard {
    private static final int[] aJ;
    private static final int[] aK;
    private static final int[] aL;
    private static final int[] aM;
    private static final int[][] aN;
    private static final int[] aO;
    private ExpandableListAdapter aA;
    private int aB;
    private int aC;
    private int aD;
    private int aE;
    private int aF;
    private int aG;
    private Drawable aH;
    private Drawable aI;
    private Drawable aP;
    private final Rect aQ;
    private final Rect aR;
    private int aS;
    private int aT;
    private int aU;
    private int aV;
    private ProGuard aW;
    private ProGuard aX;
    private ProGuard aY;
    private ProGuard aZ;
    private ExpandableHListConnector az;

    /* compiled from: ProGuard */
    static class SavedState extends BaseSavedState {
        public static final Creator<SavedState> CREATOR;
        ArrayList<GroupMetadata> f9285a;

        SavedState(Parcelable parcelable, ArrayList<GroupMetadata> arrayList) {
            super(parcelable);
            this.f9285a = arrayList;
        }

        private SavedState(Parcel parcel) {
            super(parcel);
            this.f9285a = new ArrayList();
            parcel.readList(this.f9285a, ExpandableHListConnector.class.getClassLoader());
        }

        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeList(this.f9285a);
        }

        static {
            CREATOR = new ProGuard();
        }
    }

    /* renamed from: it.sephiroth.android.library.widget.ExpandableHListView.a */
    public static class ProGuard implements ContextMenuInfo {
        public View f9286a;
        public long f9287b;
        public long f9288c;

        public ProGuard(View view, long j, long j2) {
            this.f9286a = view;
            this.f9287b = j;
            this.f9288c = j2;
        }
    }

    /* renamed from: it.sephiroth.android.library.widget.ExpandableHListView.b */
    public interface ProGuard {
        boolean m11692a(ExpandableHListView expandableHListView, View view, int i, int i2, long j);
    }

    /* renamed from: it.sephiroth.android.library.widget.ExpandableHListView.c */
    public interface ProGuard {
        boolean m11693a(ExpandableHListView expandableHListView, View view, int i, long j);
    }

    /* renamed from: it.sephiroth.android.library.widget.ExpandableHListView.d */
    public interface ProGuard {
        void m11694a(int i);
    }

    /* renamed from: it.sephiroth.android.library.widget.ExpandableHListView.e */
    public interface ProGuard {
        void m11695a(int i);
    }

    static {
        aJ = new int[0];
        aK = new int[]{16842920};
        aL = new int[]{16842921};
        aM = new int[]{16842920, 16842921};
        aN = new int[][]{aJ, aK, aL, aM};
        aO = new int[]{16842918};
    }

    public void onRtlPropertiesChanged(int i) {
        m11705z();
        m11696A();
    }

    private void m11705z() {
        if (this.aH != null) {
            this.aS = this.aH.getIntrinsicWidth();
            this.aT = this.aH.getIntrinsicHeight();
            return;
        }
        this.aS = 0;
        this.aT = 0;
    }

    private void m11696A() {
        if (this.aI != null) {
            this.aU = this.aI.getIntrinsicWidth();
            this.aV = this.aI.getIntrinsicHeight();
            return;
        }
        this.aU = 0;
        this.aV = 0;
    }

    protected void dispatchDraw(Canvas canvas) {
        super.dispatchDraw(canvas);
        if (this.aI != null || this.aH != null) {
            int headerViewsCount = getHeaderViewsCount();
            int footerViewsCount = ((this.ao - getFooterViewsCount()) - headerViewsCount) - 1;
            int right = getRight();
            Rect rect = this.aQ;
            int childCount = getChildCount();
            int i = this.V - headerViewsCount;
            headerViewsCount = -4;
            int i2 = 0;
            int i3 = i;
            while (i2 < childCount) {
                if (i3 >= 0) {
                    if (i3 <= footerViewsCount) {
                        View childAt = getChildAt(i2);
                        int left = childAt.getLeft();
                        int right2 = childAt.getRight();
                        if (right2 >= 0 && left <= right) {
                            it.sephiroth.android.library.widget.ExpandableHListConnector.ProGuard a = this.az.m11684a(i3);
                            if (a.f9277a.f9312d != headerViewsCount) {
                                if (a.f9277a.f9312d == 1) {
                                    rect.top = childAt.getTop() + this.aF;
                                    rect.bottom = childAt.getBottom() + this.aF;
                                } else {
                                    rect.top = childAt.getTop() + this.aB;
                                    rect.bottom = childAt.getBottom() + this.aB;
                                }
                                headerViewsCount = a.f9277a.f9312d;
                            }
                            if (rect.top != rect.bottom) {
                                if (a.f9277a.f9312d == 1) {
                                    rect.left = this.aG + left;
                                    rect.right = this.aG + right2;
                                } else {
                                    rect.left = this.aC + left;
                                    rect.right = this.aC + right2;
                                }
                                Drawable a2 = m11699a(a);
                                if (a2 != null) {
                                    if (a.f9277a.f9312d == 1) {
                                        Gravity.apply(this.aE, this.aU, this.aV, rect, this.aR);
                                    } else {
                                        Gravity.apply(this.aD, this.aS, this.aT, rect, this.aR);
                                    }
                                    a2.setBounds(this.aR);
                                    a2.draw(canvas);
                                }
                            }
                            a.m11678a();
                        }
                    } else {
                        return;
                    }
                }
                i2++;
                i3++;
            }
        }
    }

    private Drawable m11699a(it.sephiroth.android.library.widget.ExpandableHListConnector.ProGuard proGuard) {
        int i = 1;
        int i2 = 0;
        if (proGuard.f9277a.f9312d == 2) {
            Drawable drawable = this.aH;
            if (drawable == null || !drawable.isStateful()) {
                return drawable;
            }
            int i3 = (proGuard.f9278b == null || proGuard.f9278b.f9272b == proGuard.f9278b.f9271a) ? 1 : 0;
            if (!proGuard.m11679b()) {
                i = 0;
            }
            if (i3 != 0) {
                i2 = 2;
            }
            drawable.setState(aN[i | i2]);
            return drawable;
        }
        Drawable drawable2 = this.aI;
        if (drawable2 != null && drawable2.isStateful()) {
            drawable2.setState(proGuard.f9277a.f9311c == proGuard.f9278b.f9272b ? aO : aJ);
        }
        return drawable2;
    }

    public void setChildDivider(Drawable drawable) {
        this.aP = drawable;
    }

    void m11706a(Canvas canvas, Rect rect, int i) {
        int i2 = this.V + i;
        if (i2 >= 0) {
            it.sephiroth.android.library.widget.ExpandableHListConnector.ProGuard a = this.az.m11684a(m11703l(i2));
            if (a.f9277a.f9312d == 1 || (a.m11679b() && a.f9278b.f9272b != a.f9278b.f9271a)) {
                Drawable drawable = this.aP;
                drawable.setBounds(rect);
                drawable.draw(canvas);
                a.m11678a();
                return;
            }
            a.m11678a();
        }
        super.m11654a(canvas, rect, i2);
    }

    public void setAdapter(ListAdapter listAdapter) {
        throw new RuntimeException("For ExpandableListView, use setAdapter(ExpandableListAdapter) instead of setAdapter(ListAdapter)");
    }

    public ListAdapter getAdapter() {
        return super.getAdapter();
    }

    public void setOnItemClickListener(it.sephiroth.android.library.widget.ProGuard.ProGuard proGuard) {
        super.setOnItemClickListener(proGuard);
    }

    public void setAdapter(ExpandableListAdapter expandableListAdapter) {
        this.aA = expandableListAdapter;
        if (expandableListAdapter != null) {
            this.az = new ExpandableHListConnector(expandableListAdapter);
        } else {
            this.az = null;
        }
        super.setAdapter(this.az);
    }

    public ExpandableListAdapter getExpandableListAdapter() {
        return this.aA;
    }

    private boolean m11702k(int i) {
        return i < getHeaderViewsCount() || i >= this.ao - getFooterViewsCount();
    }

    private int m11703l(int i) {
        return i - getHeaderViewsCount();
    }

    private int m11704m(int i) {
        return getHeaderViewsCount() + i;
    }

    public boolean m11707a(View view, int i, long j) {
        if (m11702k(i)) {
            return super.m11588a(view, i, j);
        }
        return m11709d(view, m11703l(i), j);
    }

    boolean m11709d(View view, int i, long j) {
        boolean z;
        it.sephiroth.android.library.widget.ExpandableHListConnector.ProGuard a = this.az.m11684a(i);
        long a2 = m11698a(a.f9277a);
        if (a.f9277a.f9312d == 2) {
            if (this.aY != null) {
                if (this.aY.m11693a(this, view, a.f9277a.f9309a, a2)) {
                    a.m11678a();
                    return true;
                }
            }
            if (a.m11679b()) {
                this.az.m11688a(a);
                playSoundEffect(0);
                if (this.aW != null) {
                    this.aW.m11694a(a.f9277a.f9309a);
                }
            } else {
                this.az.m11691b(a);
                playSoundEffect(0);
                if (this.aX != null) {
                    this.aX.m11695a(a.f9277a.f9309a);
                }
                int headerViewsCount = a.f9277a.f9311c + getHeaderViewsCount();
                m11592b(this.aA.getChildrenCount(a.f9277a.f9309a) + headerViewsCount, headerViewsCount);
            }
            z = true;
        } else if (this.aZ != null) {
            playSoundEffect(0);
            return this.aZ.m11692a(this, view, a.f9277a.f9309a, a.f9277a.f9310b, a2);
        } else {
            z = false;
        }
        a.m11678a();
        return z;
    }

    public void setOnGroupCollapseListener(ProGuard proGuard) {
        this.aW = proGuard;
    }

    public void setOnGroupExpandListener(ProGuard proGuard) {
        this.aX = proGuard;
    }

    public void setOnGroupClickListener(ProGuard proGuard) {
        this.aY = proGuard;
    }

    public void setOnChildClickListener(ProGuard proGuard) {
        this.aZ = proGuard;
    }

    public long m11710g(int i) {
        if (m11702k(i)) {
            return 4294967295L;
        }
        it.sephiroth.android.library.widget.ExpandableHListConnector.ProGuard a = this.az.m11684a(m11703l(i));
        long a2 = a.f9277a.m11723a();
        a.m11678a();
        return a2;
    }

    public long getSelectedPosition() {
        return m11710g(getSelectedItemPosition());
    }

    public long getSelectedId() {
        long selectedPosition = getSelectedPosition();
        if (selectedPosition == 4294967295L) {
            return -1;
        }
        int b = m11700b(selectedPosition);
        if (m11697a(selectedPosition) == 0) {
            return this.aA.getGroupId(b);
        }
        return this.aA.getChildId(b, m11701c(selectedPosition));
    }

    public void setSelectedGroup(int i) {
        ProGuard a = ProGuard.m11719a(i);
        it.sephiroth.android.library.widget.ExpandableHListConnector.ProGuard a2 = this.az.m11685a(a);
        a.m11724b();
        super.setSelection(m11704m(a2.f9277a.f9311c));
        a2.m11678a();
    }

    public static int m11697a(long j) {
        if (j == 4294967295L) {
            return 2;
        }
        return (j & Long.MIN_VALUE) == Long.MIN_VALUE ? 1 : 0;
    }

    public static int m11700b(long j) {
        if (j == 4294967295L) {
            return -1;
        }
        return (int) ((9223372032559808512L & j) >> 32);
    }

    public static int m11701c(long j) {
        if (j != 4294967295L && (j & Long.MIN_VALUE) == Long.MIN_VALUE) {
            return (int) (j & 4294967295L);
        }
        return -1;
    }

    ContextMenuInfo m11708b(View view, int i, long j) {
        if (m11702k(i)) {
            return new it.sephiroth.android.library.widget.ProGuard.ProGuard(view, i, j);
        }
        it.sephiroth.android.library.widget.ExpandableHListConnector.ProGuard a = this.az.m11684a(m11703l(i));
        ProGuard proGuard = a.f9277a;
        long a2 = m11698a(proGuard);
        long a3 = proGuard.m11723a();
        a.m11678a();
        return new ProGuard(view, a3, a2);
    }

    private long m11698a(ProGuard proGuard) {
        if (proGuard.f9312d == 1) {
            return this.aA.getChildId(proGuard.f9309a, proGuard.f9310b);
        }
        return this.aA.getGroupId(proGuard.f9309a);
    }

    public void setChildIndicator(Drawable drawable) {
        this.aI = drawable;
        m11696A();
    }

    public void setGroupIndicator(Drawable drawable) {
        this.aH = drawable;
        m11705z();
    }

    public Parcelable onSaveInstanceState() {
        return new SavedState(super.onSaveInstanceState(), this.az != null ? this.az.m11689b() : null);
    }

    public void onRestoreInstanceState(Parcelable parcelable) {
        if (parcelable instanceof SavedState) {
            SavedState savedState = (SavedState) parcelable;
            super.onRestoreInstanceState(savedState.getSuperState());
            if (this.az != null && savedState.f9285a != null) {
                this.az.m11687a(savedState.f9285a);
                return;
            }
            return;
        }
        super.onRestoreInstanceState(parcelable);
    }

    public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        accessibilityEvent.setClassName(ExpandableHListView.class.getName());
    }

    @TargetApi(14)
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName(ExpandableHListView.class.getName());
    }
}
