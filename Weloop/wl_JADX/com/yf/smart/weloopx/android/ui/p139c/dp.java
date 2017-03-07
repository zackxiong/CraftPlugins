package com.yf.smart.weloopx.android.ui.p139c;

import android.app.Activity;
import android.app.DialogFragment;
import android.app.FragmentManager;
import android.os.Bundle;
import com.baidu.location.LocationClientOption;
import com.yf.smart.weloopx.data.models.DownloadWatchfaceListParams;
import com.yf.smart.weloopx.data.models.WatchfaceListResult;
import com.yf.smart.weloopx.dist.R;
import com.yf.smart.weloopx.p145g.ProGuard;

/* compiled from: ProGuard */
/* renamed from: com.yf.smart.weloopx.android.ui.c.dp */
public class dp extends ProGuard {
    private ProGuard f8446b;
    private int f8447c;
    private ProGuard f8448d;

    /* renamed from: com.yf.smart.weloopx.android.ui.c.dp.a */
    public interface ProGuard {
        void m10466a(int i, String str, WatchfaceListResult watchfaceListResult);
    }

    public static void m10468a(FragmentManager fragmentManager, int i) {
        Bundle bundle = new Bundle();
        bundle.putInt("1", i);
        DialogFragment dpVar = new dp();
        dpVar.setArguments(bundle);
        com.yf.smart.weloopx.android.ui.ProGuard.m10544a(dpVar, fragmentManager, "wfd");
    }

    public void onAttach(Activity activity) {
        super.onAttach(activity);
        this.f8448d = new ProGuard();
        this.f8446b = (ProGuard) m10171c();
        this.f8447c = getArguments().getInt("1");
        m10200c(getString(R.string.downloading_watchface));
        m10469e();
    }

    private void m10469e() {
        if (m10202d()) {
            com.yf.smart.weloopx.p140b.ProGuard.m10759a().m10762a(m10470f(), new dq(this));
            return;
        }
        m10163a((int) R.string.net_unuse);
        m10167b();
    }

    private DownloadWatchfaceListParams m10470f() {
        DownloadWatchfaceListParams downloadWatchfaceListParams = new DownloadWatchfaceListParams();
        downloadWatchfaceListParams.pageSize = LocationClientOption.MIN_SCAN_SPAN;
        downloadWatchfaceListParams.pageNum = 1;
        downloadWatchfaceListParams.releaseType = com.yf.gattlib.p117p.ProGuard.m8226b(getActivity());
        switch (this.f8447c) {
            case R.string.watchface_type_icon:
                downloadWatchfaceListParams.watchClass = "00";
                downloadWatchfaceListParams.orderFlag = 1;
                break;
            case R.string.watchface_type_latest:
                downloadWatchfaceListParams.watchClass = null;
                downloadWatchfaceListParams.orderFlag = 1;
                break;
            case R.string.watchface_type_number:
                downloadWatchfaceListParams.watchClass = "01";
                downloadWatchfaceListParams.orderFlag = 1;
                break;
            case R.string.watchface_type_pointer:
                downloadWatchfaceListParams.watchClass = "02";
                downloadWatchfaceListParams.orderFlag = 1;
                break;
            case R.string.watchface_type_top:
                downloadWatchfaceListParams.watchClass = null;
                downloadWatchfaceListParams.orderFlag = 2;
                break;
        }
        return downloadWatchfaceListParams;
    }
}
