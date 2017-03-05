package com.baidu.mapapi.search.route;

import com.baidu.mapapi.model.C0579a;
import com.baidu.mapapi.model.LatLng;
import com.baidu.mapapi.search.core.RouteLine;
import com.baidu.mapapi.search.core.RouteNode;
import com.baidu.mapapi.search.core.RouteStep;
import com.baidu.mapapi.search.core.TaxiInfo;
import com.baidu.mapapi.search.core.VehicleInfo;
import java.util.List;

public final class TransitRouteLine extends RouteLine<TransitStep> {
    private TaxiInfo f4594a;

    public static class TransitStep extends RouteStep {
        private VehicleInfo f4588c;
        private RouteNode f4589d;
        private RouteNode f4590e;
        private TransitRouteStepType f4591f;
        private String f4592g;
        private String f4593h;

        public enum TransitRouteStepType {
            BUSLINE,
            SUBWAY,
            WAKLING
        }

        public RouteNode getEntrace() {
            return this.f4589d;
        }

        public RouteNode getExit() {
            return this.f4590e;
        }

        public String getInstructions() {
            return this.f4592g;
        }

        public TransitRouteStepType getStepType() {
            return this.f4591f;
        }

        public VehicleInfo getVehicleInfo() {
            return this.f4588c;
        }

        public List<LatLng> getWayPoints() {
            if (this.mWayPoints == null) {
                this.mWayPoints = C0579a.m6362b(this.f4593h);
            }
            return this.mWayPoints;
        }
    }

    TransitRouteLine() {
    }

    @Deprecated
    public TaxiInfo getTaxitInfo() {
        return this.f4594a;
    }
}
