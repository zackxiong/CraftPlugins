package com.baidu.android.pushservice.richmedia;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import com.baidu.android.pushservice.util.PushDatabase;
import com.baidu.android.pushservice.util.PushDatabase.C0360g;
import java.io.File;
import java.util.Map;

/* renamed from: com.baidu.android.pushservice.richmedia.g */
class C0339g implements OnClickListener {
    final /* synthetic */ long f3448a;
    final /* synthetic */ C0337e f3449b;

    C0339g(C0337e c0337e, long j) {
        this.f3449b = c0337e;
        this.f3448a = j;
    }

    public void onClick(DialogInterface dialogInterface, int i) {
        String str = (String) ((Map) this.f3449b.f3446a.f3410a.get((int) this.f3448a)).get(MediaListActivity.f3409r);
        C0360g fileDownloadingInfo = PushDatabase.getFileDownloadingInfo(this.f3449b.f3446a, str);
        if (fileDownloadingInfo != null) {
            new File(fileDownloadingInfo.f3540e).delete();
        }
        PushDatabase.deleteFileDownloadingInfo(this.f3449b.f3446a, str);
        Intent intent = new Intent();
        intent.setClass(this.f3449b.f3446a, MediaListActivity.class);
        this.f3449b.f3446a.startActivity(intent);
    }
}
