package com.yf.smart.weloopx.android.ui.activities;

import android.os.AsyncTask;
import com.baidu.mapapi.model.LatLng;
import com.baidu.mapapi.utils.DistanceUtil;
import com.yf.smart.weloopx.data.models.LocationModel;
import com.yf.smart.weloopx.p145g.ProGuard;

/* compiled from: ProGuard */
class gk extends AsyncTask<Void, Void, Void> {
    final /* synthetic */ TrajectoryActivity f8066a;

    gk(TrajectoryActivity trajectoryActivity) {
        this.f8066a = trajectoryActivity;
    }

    protected /* synthetic */ Object doInBackground(Object[] objArr) {
        return m9940a((Void[]) objArr);
    }

    protected /* synthetic */ void onPostExecute(Object obj) {
        m9941a((Void) obj);
    }

    protected Void m9940a(Void... voidArr) {
        this.f8066a.f7707y = this.f8066a.f7706x.m11084a(this.f8066a.f7671A, this.f8066a.f7672B);
        double d = 0.0d;
        double d2 = 0.0d;
        for (LocationModel locationModel : this.f8066a.f7707y) {
            double parseDouble = Double.parseDouble(locationModel.getLOCATION_LAT()) / ((double) ProGuard.f8963c);
            double parseDouble2 = Double.parseDouble(locationModel.getLOCATION_LON()) / ((double) ProGuard.f8963c);
            com.yf.gattlib.p117p.ProGuard.m8292a(this.f8066a.f7696n + " locationTime = " + locationModel.getLOCATION_TIME() + " latitude = " + (Double.parseDouble(locationModel.getLOCATION_LON()) / ((double) ProGuard.f8963c)) + "," + (Double.parseDouble(locationModel.getLOCATION_LAT()) / ((double) ProGuard.f8963c)) + " distance = " + DistanceUtil.getDistance(new LatLng(parseDouble, parseDouble2), new LatLng(d2, d)));
            com.yf.gattlib.p117p.ProGuard.m8245a((Double.parseDouble(locationModel.getLOCATION_LON()) / ((double) ProGuard.f8963c)) + "," + (Double.parseDouble(locationModel.getLOCATION_LAT()) / ((double) ProGuard.f8963c)) + ";");
            d = parseDouble2;
            d2 = parseDouble;
        }
        com.yf.gattlib.p117p.ProGuard.m8292a(this.f8066a.f7696n + " \u83b7\u5f97\u7684\u4f4d\u7f6e\u4fe1\u606f\u6570\u91cf = " + this.f8066a.f7707y.size());
        return null;
    }

    protected void m9941a(Void voidR) {
        if (!this.f8066a.isDestroyed() && !this.f8066a.isFinishing()) {
            this.f8066a.m9652h();
        }
    }
}
