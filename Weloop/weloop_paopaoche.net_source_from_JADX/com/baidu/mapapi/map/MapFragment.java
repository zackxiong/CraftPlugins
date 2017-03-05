package com.baidu.mapapi.map;

import android.app.Activity;
import android.app.Fragment;
import android.content.res.Configuration;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;

public class MapFragment extends Fragment {
    private static final String f4342a;
    private MapView f4343b;
    private BaiduMapOptions f4344c;

    static {
        f4342a = MapFragment.class.getSimpleName();
    }

    private MapFragment(BaiduMapOptions baiduMapOptions) {
        this.f4344c = baiduMapOptions;
    }

    public static MapFragment newInstance() {
        return new MapFragment();
    }

    public static MapFragment newInstance(BaiduMapOptions baiduMapOptions) {
        return new MapFragment(baiduMapOptions);
    }

    public BaiduMap getBaiduMap() {
        return this.f4343b == null ? null : this.f4343b.getMap();
    }

    public MapView getMapView() {
        return this.f4343b;
    }

    public void onActivityCreated(Bundle bundle) {
        super.onActivityCreated(bundle);
    }

    public void onAttach(Activity activity) {
        super.onAttach(activity);
    }

    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
    }

    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        this.f4343b = new MapView(getActivity(), this.f4344c);
        return this.f4343b;
    }

    public void onDestroy() {
        super.onDestroy();
    }

    public void onDestroyView() {
        super.onDestroyView();
        this.f4343b.onDestroy();
    }

    public void onDetach() {
        super.onDetach();
    }

    public void onPause() {
        super.onPause();
        this.f4343b.onPause();
    }

    public void onResume() {
        super.onResume();
        this.f4343b.onResume();
    }

    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
    }

    public void onStart() {
        super.onStart();
    }

    public void onStop() {
        super.onStop();
    }

    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
    }
}
