package it.sephiroth.android.library.p151a.p152a;

import android.annotation.TargetApi;
import android.view.ActionMode;
import android.view.Menu;
import android.view.MenuItem;
import it.sephiroth.android.library.widget.AbsHListView;

/* renamed from: it.sephiroth.android.library.a.a.b */
public class ProGuard implements ProGuard {
    private ProGuard f9168a;
    private AbsHListView f9169b;

    public ProGuard(AbsHListView absHListView) {
        this.f9169b = absHListView;
    }

    public void m11470a(ProGuard proGuard) {
        this.f9168a = proGuard;
    }

    public boolean m11471a() {
        return this.f9168a != null;
    }

    @TargetApi(11)
    public boolean onCreateActionMode(ActionMode actionMode, Menu menu) {
        if (!this.f9168a.onCreateActionMode(actionMode, menu)) {
            return false;
        }
        this.f9169b.setLongClickable(false);
        return true;
    }

    @TargetApi(11)
    public boolean onPrepareActionMode(ActionMode actionMode, Menu menu) {
        return this.f9168a.onPrepareActionMode(actionMode, menu);
    }

    @TargetApi(11)
    public boolean onActionItemClicked(ActionMode actionMode, MenuItem menuItem) {
        return this.f9168a.onActionItemClicked(actionMode, menuItem);
    }

    @TargetApi(11)
    public void onDestroyActionMode(ActionMode actionMode) {
        this.f9168a.onDestroyActionMode(actionMode);
        this.f9169b.f9247c = null;
        this.f9169b.m11579a();
        this.f9169b.aj = true;
        this.f9169b.m11536x();
        this.f9169b.requestLayout();
        this.f9169b.setLongClickable(true);
    }

    @TargetApi(11)
    public void m11469a(ActionMode actionMode, int i, long j, boolean z) {
        this.f9168a.m11468a(actionMode, i, j, z);
        if (this.f9169b.getCheckedItemCount() == 0) {
            actionMode.finish();
        }
    }
}
