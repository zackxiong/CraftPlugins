package com.baidu.android.pushservice.richmedia;

import android.content.Intent;
import android.net.Uri;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import com.baidu.android.pushservice.util.PushDatabase;
import com.baidu.android.pushservice.util.PushDatabase.C0360g;
import java.io.File;
import java.util.HashMap;

/* renamed from: com.baidu.android.pushservice.richmedia.d */
class C0336d implements OnItemClickListener {
    final /* synthetic */ MediaListActivity f3445a;

    C0336d(MediaListActivity mediaListActivity) {
        this.f3445a = mediaListActivity;
    }

    public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
        C0360g fileDownloadingInfo = PushDatabase.getFileDownloadingInfo(this.f3445a, (String) ((HashMap) adapterView.getItemAtPosition(i)).get(MediaListActivity.f3409r));
        if (fileDownloadingInfo == null) {
            return;
        }
        if (fileDownloadingInfo.f3544i == C0334b.f3436f) {
            String str = fileDownloadingInfo.f3540e;
            String str2 = fileDownloadingInfo.f3541f;
            if (str2.length() > 0) {
                str2 = str + "/" + str2.substring(0, str2.lastIndexOf(".")) + "/index.html";
                Intent intent = new Intent();
                intent.setClass(this.f3445a, MediaViewActivity.class);
                intent.setData(Uri.fromFile(new File(str2)));
                intent.addFlags(268435456);
                this.f3445a.startActivity(intent);
                return;
            }
            return;
        }
        this.f3445a.m5108a(fileDownloadingInfo.f3537b, fileDownloadingInfo.f3538c, fileDownloadingInfo.f3539d);
    }
}
