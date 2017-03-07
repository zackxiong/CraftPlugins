package com.baidu.mapapi.map.offline;

import cn.sharesdk.framework.Platform;
import com.baidu.platform.comapi.map.C0576u;
import java.util.List;
import uk.co.chrisjenx.calligraphy.ProGuard;

/* renamed from: com.baidu.mapapi.map.offline.a */
class C0577a implements C0576u {
    final /* synthetic */ MKOfflineMap f4513a;

    C0577a(MKOfflineMap mKOfflineMap) {
        this.f4513a = mKOfflineMap;
    }

    public void m6354a(int i, int i2) {
        switch (i) {
            case ProGuard.styleable.View_theme /*4*/:
                List<MKOLUpdateElement> allUpdateInfo = this.f4513a.getAllUpdateInfo();
                if (allUpdateInfo != null) {
                    for (MKOLUpdateElement mKOLUpdateElement : allUpdateInfo) {
                        if (mKOLUpdateElement.update) {
                            this.f4513a.f4512c.onGetOfflineMapState(4, mKOLUpdateElement.cityID);
                        }
                    }
                }
            case ProGuard.styleable.View_backgroundTintMode /*6*/:
                this.f4513a.f4512c.onGetOfflineMapState(6, i2);
            case ProGuard.styleable.Toolbar_popupTheme /*8*/:
                this.f4513a.f4512c.onGetOfflineMapState(0, Platform.CUSTOMER_ACTION_MASK & (i2 >> 16));
            case ProGuard.styleable.Toolbar_titleMarginStart /*12*/:
                this.f4513a.f4511b.m6593a(true, false);
            default:
        }
    }
}
