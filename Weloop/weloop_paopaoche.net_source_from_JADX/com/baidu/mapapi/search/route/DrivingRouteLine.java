package com.baidu.mapapi.search.route;

import com.baidu.mapapi.model.LatLng;
import com.baidu.mapapi.search.core.RouteLine;
import com.baidu.mapapi.search.core.RouteNode;
import com.baidu.mapapi.search.core.RouteStep;
import java.util.List;

public class DrivingRouteLine extends RouteLine<DrivingStep> {
    private boolean f4586a;
    private List<RouteNode> f4587b;

    public static class DrivingStep extends RouteStep {
        List<LatLng> f4577c;
        int[] f4578d;
        private int f4579e;
        private RouteNode f4580f;
        private RouteNode f4581g;
        private String f4582h;
        private String f4583i;
        private String f4584j;
        private int f4585k;

        public int getDirection() {
            return this.f4579e;
        }

        public RouteNode getEntrace() {
            return this.f4580f;
        }

        public String getEntraceInstructions() {
            return this.f4582h;
        }

        public RouteNode getExit() {
            return this.f4581g;
        }

        public String getExitInstructions() {
            return this.f4583i;
        }

        public String getInstructions() {
            return this.f4584j;
        }

        public int getNumTurns() {
            return this.f4585k;
        }

        public int[] getTrafficList() {
            return this.f4578d;
        }

        public List<LatLng> getWayPoints() {
            return this.f4577c;
        }
    }

    DrivingRouteLine() {
    }

    public List<RouteNode> getWayPoints() {
        return this.f4587b;
    }

    @Deprecated
    public boolean isSupportTraffic() {
        return this.f4586a;
    }
}
