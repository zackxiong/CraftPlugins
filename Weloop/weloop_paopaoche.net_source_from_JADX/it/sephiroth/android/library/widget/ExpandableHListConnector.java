package it.sephiroth.android.library.widget;

import android.database.DataSetObserver;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.os.SystemClock;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ExpandableListAdapter;
import android.widget.Filter;
import android.widget.Filterable;
import android.widget.HeterogeneousExpandableList;
import java.util.ArrayList;
import java.util.Collections;

/* compiled from: ProGuard */
class ExpandableHListConnector extends BaseAdapter implements Filterable {
    private ExpandableListAdapter f9280a;
    private ArrayList<GroupMetadata> f9281b;
    private int f9282c;
    private int f9283d;
    private final DataSetObserver f9284e;

    /* compiled from: ProGuard */
    static class GroupMetadata implements Parcelable, Comparable<GroupMetadata> {
        public static final Creator<GroupMetadata> CREATOR;
        int f9271a;
        int f9272b;
        int f9273c;
        long f9274d;

        public /* synthetic */ int compareTo(Object obj) {
            return m11674a((GroupMetadata) obj);
        }

        private GroupMetadata() {
        }

        static GroupMetadata m11673a(int i, int i2, int i3, long j) {
            GroupMetadata groupMetadata = new GroupMetadata();
            groupMetadata.f9271a = i;
            groupMetadata.f9272b = i2;
            groupMetadata.f9273c = i3;
            groupMetadata.f9274d = j;
            return groupMetadata;
        }

        public int m11674a(GroupMetadata groupMetadata) {
            if (groupMetadata != null) {
                return this.f9273c - groupMetadata.f9273c;
            }
            throw new IllegalArgumentException();
        }

        public int describeContents() {
            return 0;
        }

        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeInt(this.f9271a);
            parcel.writeInt(this.f9272b);
            parcel.writeInt(this.f9273c);
            parcel.writeLong(this.f9274d);
        }

        static {
            CREATOR = new ProGuard();
        }
    }

    /* renamed from: it.sephiroth.android.library.widget.ExpandableHListConnector.a */
    protected class ProGuard extends DataSetObserver {
        final /* synthetic */ ExpandableHListConnector f9275a;

        protected ProGuard(ExpandableHListConnector expandableHListConnector) {
            this.f9275a = expandableHListConnector;
        }

        public void onChanged() {
            this.f9275a.m11681a(true, true);
            this.f9275a.notifyDataSetChanged();
        }

        public void onInvalidated() {
            this.f9275a.m11681a(true, true);
            this.f9275a.notifyDataSetInvalidated();
        }
    }

    /* renamed from: it.sephiroth.android.library.widget.ExpandableHListConnector.b */
    public static class ProGuard {
        private static ArrayList<ProGuard> f9276d;
        public ProGuard f9277a;
        public GroupMetadata f9278b;
        public int f9279c;

        static {
            f9276d = new ArrayList(5);
        }

        private void m11676c() {
            if (this.f9277a != null) {
                this.f9277a.m11724b();
                this.f9277a = null;
            }
            this.f9278b = null;
            this.f9279c = 0;
        }

        private ProGuard() {
        }

        static ProGuard m11675a(int i, int i2, int i3, int i4, GroupMetadata groupMetadata, int i5) {
            ProGuard d = ProGuard.m11677d();
            d.f9277a = ProGuard.m11720a(i2, i3, i4, i);
            d.f9278b = groupMetadata;
            d.f9279c = i5;
            return d;
        }

        private static ProGuard m11677d() {
            ProGuard proGuard;
            synchronized (f9276d) {
                if (f9276d.size() > 0) {
                    proGuard = (ProGuard) f9276d.remove(0);
                    proGuard.m11676c();
                } else {
                    proGuard = new ProGuard();
                }
            }
            return proGuard;
        }

        public void m11678a() {
            m11676c();
            synchronized (f9276d) {
                if (f9276d.size() < 5) {
                    f9276d.add(this);
                }
            }
        }

        public boolean m11679b() {
            return this.f9278b != null;
        }
    }

    public ExpandableHListConnector(ExpandableListAdapter expandableListAdapter) {
        this.f9283d = Integer.MAX_VALUE;
        this.f9284e = new ProGuard(this);
        this.f9281b = new ArrayList();
        m11686a(expandableListAdapter);
    }

    public void m11686a(ExpandableListAdapter expandableListAdapter) {
        if (this.f9280a != null) {
            this.f9280a.unregisterDataSetObserver(this.f9284e);
        }
        this.f9280a = expandableListAdapter;
        expandableListAdapter.registerDataSetObserver(this.f9284e);
    }

    ProGuard m11684a(int i) {
        int i2 = 0;
        ArrayList arrayList = this.f9281b;
        int size = arrayList.size();
        int i3 = size - 1;
        if (size == 0) {
            return ProGuard.m11675a(i, 2, i, -1, null, 0);
        }
        size = i3;
        int i4 = 0;
        while (i4 <= size) {
            i2 = ((size - i4) / 2) + i4;
            GroupMetadata groupMetadata = (GroupMetadata) arrayList.get(i2);
            if (i > groupMetadata.f9272b) {
                i4 = i2 + 1;
            } else if (i < groupMetadata.f9271a) {
                size = i2 - 1;
            } else if (i == groupMetadata.f9271a) {
                return ProGuard.m11675a(i, 2, groupMetadata.f9273c, -1, groupMetadata, i2);
            } else if (i <= groupMetadata.f9272b) {
                return ProGuard.m11675a(i, 1, groupMetadata.f9273c, i - (groupMetadata.f9271a + 1), groupMetadata, i2);
            }
        }
        GroupMetadata groupMetadata2;
        if (i4 > i2) {
            groupMetadata2 = (GroupMetadata) arrayList.get(i4 - 1);
            size = (i - groupMetadata2.f9272b) + groupMetadata2.f9273c;
            i2 = i4;
        } else if (size < i2) {
            i2 = size + 1;
            groupMetadata2 = (GroupMetadata) arrayList.get(i2);
            size = groupMetadata2.f9273c - (groupMetadata2.f9271a - i);
        } else {
            throw new RuntimeException("Unknown state");
        }
        return ProGuard.m11675a(i, 2, size, -1, null, i2);
    }

    ProGuard m11685a(ProGuard proGuard) {
        int i = 0;
        ArrayList arrayList = this.f9281b;
        int size = arrayList.size();
        int i2 = size - 1;
        if (size == 0) {
            return ProGuard.m11675a(proGuard.f9309a, proGuard.f9312d, proGuard.f9309a, proGuard.f9310b, null, 0);
        }
        size = i2;
        int i3 = 0;
        while (i3 <= size) {
            i = ((size - i3) / 2) + i3;
            GroupMetadata groupMetadata = (GroupMetadata) arrayList.get(i);
            if (proGuard.f9309a > groupMetadata.f9273c) {
                i3 = i + 1;
            } else if (proGuard.f9309a < groupMetadata.f9273c) {
                size = i - 1;
            } else if (proGuard.f9309a == groupMetadata.f9273c) {
                if (proGuard.f9312d == 2) {
                    return ProGuard.m11675a(groupMetadata.f9271a, proGuard.f9312d, proGuard.f9309a, proGuard.f9310b, groupMetadata, i);
                }
                if (proGuard.f9312d == 1) {
                    return ProGuard.m11675a((groupMetadata.f9271a + proGuard.f9310b) + 1, proGuard.f9312d, proGuard.f9309a, proGuard.f9310b, groupMetadata, i);
                }
                return null;
            }
        }
        if (proGuard.f9312d != 2) {
            return null;
        }
        GroupMetadata groupMetadata2;
        if (i3 > i) {
            groupMetadata2 = (GroupMetadata) arrayList.get(i3 - 1);
            return ProGuard.m11675a((proGuard.f9309a - groupMetadata2.f9273c) + groupMetadata2.f9272b, proGuard.f9312d, proGuard.f9309a, proGuard.f9310b, null, i3);
        } else if (size >= i) {
            return null;
        } else {
            i = size + 1;
            groupMetadata2 = (GroupMetadata) arrayList.get(i);
            return ProGuard.m11675a(groupMetadata2.f9271a - (groupMetadata2.f9273c - proGuard.f9309a), proGuard.f9312d, proGuard.f9309a, proGuard.f9310b, null, i);
        }
    }

    public boolean areAllItemsEnabled() {
        return this.f9280a.areAllItemsEnabled();
    }

    public boolean isEnabled(int i) {
        boolean z = true;
        ProGuard a = m11684a(i);
        ProGuard proGuard = a.f9277a;
        if (proGuard.f9312d == 1) {
            z = this.f9280a.isChildSelectable(proGuard.f9309a, proGuard.f9310b);
        }
        a.m11678a();
        return z;
    }

    public int getCount() {
        return this.f9280a.getGroupCount() + this.f9282c;
    }

    public Object getItem(int i) {
        Object group;
        ProGuard a = m11684a(i);
        if (a.f9277a.f9312d == 2) {
            group = this.f9280a.getGroup(a.f9277a.f9309a);
        } else if (a.f9277a.f9312d == 1) {
            group = this.f9280a.getChild(a.f9277a.f9309a, a.f9277a.f9310b);
        } else {
            throw new RuntimeException("Flat list position is of unknown type");
        }
        a.m11678a();
        return group;
    }

    public long getItemId(int i) {
        ProGuard a = m11684a(i);
        long groupId = this.f9280a.getGroupId(a.f9277a.f9309a);
        if (a.f9277a.f9312d == 2) {
            groupId = this.f9280a.getCombinedGroupId(groupId);
        } else if (a.f9277a.f9312d == 1) {
            groupId = this.f9280a.getCombinedChildId(groupId, this.f9280a.getChildId(a.f9277a.f9309a, a.f9277a.f9310b));
        } else {
            throw new RuntimeException("Flat list position is of unknown type");
        }
        a.m11678a();
        return groupId;
    }

    public View getView(int i, View view, ViewGroup viewGroup) {
        View groupView;
        boolean z = true;
        ProGuard a = m11684a(i);
        if (a.f9277a.f9312d == 2) {
            groupView = this.f9280a.getGroupView(a.f9277a.f9309a, a.m11679b(), view, viewGroup);
        } else if (a.f9277a.f9312d == 1) {
            if (a.f9278b.f9272b != i) {
                z = false;
            }
            groupView = this.f9280a.getChildView(a.f9277a.f9309a, a.f9277a.f9310b, z, view, viewGroup);
        } else {
            throw new RuntimeException("Flat list position is of unknown type");
        }
        a.m11678a();
        return groupView;
    }

    public int getItemViewType(int i) {
        int groupType;
        ProGuard a = m11684a(i);
        ProGuard proGuard = a.f9277a;
        if (this.f9280a instanceof HeterogeneousExpandableList) {
            HeterogeneousExpandableList heterogeneousExpandableList = (HeterogeneousExpandableList) this.f9280a;
            if (proGuard.f9312d == 2) {
                groupType = heterogeneousExpandableList.getGroupType(proGuard.f9309a);
            } else {
                groupType = heterogeneousExpandableList.getGroupTypeCount() + heterogeneousExpandableList.getChildType(proGuard.f9309a, proGuard.f9310b);
            }
        } else if (proGuard.f9312d == 2) {
            groupType = 0;
        } else {
            groupType = 1;
        }
        a.m11678a();
        return groupType;
    }

    public int getViewTypeCount() {
        if (!(this.f9280a instanceof HeterogeneousExpandableList)) {
            return 2;
        }
        HeterogeneousExpandableList heterogeneousExpandableList = (HeterogeneousExpandableList) this.f9280a;
        return heterogeneousExpandableList.getChildTypeCount() + heterogeneousExpandableList.getGroupTypeCount();
    }

    public boolean hasStableIds() {
        return this.f9280a.hasStableIds();
    }

    private void m11681a(boolean z, boolean z2) {
        int i;
        int i2;
        GroupMetadata groupMetadata;
        int a;
        int i3 = 0;
        Object obj = this.f9281b;
        int size = obj.size();
        this.f9282c = 0;
        if (z2) {
            i = size - 1;
            i2 = 0;
            while (i >= 0) {
                int i4;
                groupMetadata = (GroupMetadata) obj.get(i);
                a = m11682a(groupMetadata.f9274d, groupMetadata.f9273c);
                if (a != groupMetadata.f9273c) {
                    if (a == -1) {
                        obj.remove(i);
                        size--;
                    }
                    groupMetadata.f9273c = a;
                    if (i2 == 0) {
                        i4 = 1;
                        i--;
                        i2 = i4;
                    }
                }
                i4 = i2;
                i--;
                i2 = i4;
            }
            if (i2 != 0) {
                Collections.sort(obj);
            }
        }
        i = 0;
        a = 0;
        while (i3 < size) {
            groupMetadata = (GroupMetadata) obj.get(i3);
            if (groupMetadata.f9272b == -1 || z) {
                i2 = this.f9280a.getChildrenCount(groupMetadata.f9273c);
            } else {
                i2 = groupMetadata.f9272b - groupMetadata.f9271a;
            }
            this.f9282c += i2;
            a += groupMetadata.f9273c - i;
            i = groupMetadata.f9273c;
            groupMetadata.f9271a = a;
            i2 += a;
            groupMetadata.f9272b = i2;
            i3++;
            a = i2;
        }
    }

    boolean m11690b(int i) {
        ProGuard a = ProGuard.m11720a(2, i, -1, -1);
        ProGuard a2 = m11685a(a);
        a.m11724b();
        if (a2 == null) {
            return false;
        }
        boolean a3 = m11688a(a2);
        a2.m11678a();
        return a3;
    }

    boolean m11688a(ProGuard proGuard) {
        if (proGuard.f9278b == null) {
            return false;
        }
        this.f9281b.remove(proGuard.f9278b);
        m11681a(false, false);
        notifyDataSetChanged();
        this.f9280a.onGroupCollapsed(proGuard.f9278b.f9273c);
        return true;
    }

    boolean m11691b(ProGuard proGuard) {
        if (proGuard.f9277a.f9309a < 0) {
            throw new RuntimeException("Need group");
        } else if (this.f9283d == 0) {
            return false;
        } else {
            if (proGuard.f9278b != null) {
                return false;
            }
            GroupMetadata groupMetadata;
            if (this.f9281b.size() >= this.f9283d) {
                groupMetadata = (GroupMetadata) this.f9281b.get(0);
                int indexOf = this.f9281b.indexOf(groupMetadata);
                m11690b(groupMetadata.f9273c);
                if (proGuard.f9279c > indexOf) {
                    proGuard.f9279c--;
                }
            }
            groupMetadata = GroupMetadata.m11673a(-1, -1, proGuard.f9277a.f9309a, this.f9280a.getGroupId(proGuard.f9277a.f9309a));
            this.f9281b.add(proGuard.f9279c, groupMetadata);
            m11681a(false, false);
            notifyDataSetChanged();
            this.f9280a.onGroupExpanded(groupMetadata.f9273c);
            return true;
        }
    }

    ExpandableListAdapter m11683a() {
        return this.f9280a;
    }

    public Filter getFilter() {
        ExpandableListAdapter a = m11683a();
        if (a instanceof Filterable) {
            return ((Filterable) a).getFilter();
        }
        return null;
    }

    ArrayList<GroupMetadata> m11689b() {
        return this.f9281b;
    }

    void m11687a(ArrayList<GroupMetadata> arrayList) {
        if (arrayList != null && this.f9280a != null) {
            int groupCount = this.f9280a.getGroupCount();
            int size = arrayList.size() - 1;
            while (size >= 0) {
                if (((GroupMetadata) arrayList.get(size)).f9273c < groupCount) {
                    size--;
                } else {
                    return;
                }
            }
            this.f9281b = arrayList;
            m11681a(true, false);
        }
    }

    public boolean isEmpty() {
        ExpandableListAdapter a = m11683a();
        return a != null ? a.isEmpty() : true;
    }

    int m11682a(long j, int i) {
        int groupCount = this.f9280a.getGroupCount();
        if (groupCount == 0) {
            return -1;
        }
        if (j == Long.MIN_VALUE) {
            return -1;
        }
        int min = Math.min(groupCount - 1, Math.max(0, i));
        long uptimeMillis = SystemClock.uptimeMillis() + 100;
        Object obj = null;
        ExpandableListAdapter a = m11683a();
        if (a == null) {
            return -1;
        }
        int i2 = min;
        int i3 = min;
        while (SystemClock.uptimeMillis() <= uptimeMillis) {
            if (a.getGroupId(i3) != j) {
                Object obj2 = min == groupCount + -1 ? 1 : null;
                Object obj3 = i2 == 0 ? 1 : null;
                if (obj2 != null && obj3 != null) {
                    break;
                } else if (obj3 != null || (r0 != null && obj2 == null)) {
                    min++;
                    obj = null;
                    i3 = min;
                } else if (obj2 != null || (r0 == null && obj3 == null)) {
                    i2--;
                    obj = 1;
                    i3 = i2;
                }
            } else {
                return i3;
            }
        }
        return -1;
    }
}
