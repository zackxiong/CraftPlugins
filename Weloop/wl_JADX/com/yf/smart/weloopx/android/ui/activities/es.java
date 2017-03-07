package com.yf.smart.weloopx.android.ui.activities;

/* compiled from: ProGuard */
class es implements Runnable {
    final /* synthetic */ el f8011a;

    es(el elVar) {
        this.f8011a = elVar;
    }

    public void run() {
        if (this.f8011a.f7987j > 0) {
            this.f8011a.f7993p.setText(String.valueOf(this.f8011a.f7987j));
            this.f8011a.f7993p.setTextColor(-65536);
        }
        this.f8011a.f7997t.setVisibility(8);
    }
}
