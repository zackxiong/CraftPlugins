package com.baidu.mapapi.search.route;

import com.baidu.mapapi.model.C0579a;
import com.baidu.mapapi.model.LatLng;
import com.baidu.mapapi.search.core.RouteLine;
import com.baidu.mapapi.search.core.RouteNode;
import com.baidu.mapapi.search.core.RouteStep;
import java.util.List;

public class WalkingRouteLine extends RouteLine<WalkingStep> {

    public static class WalkingStep extends RouteStep {
        private int f4595c;
        private RouteNode f4596d;
        private RouteNode f4597e;
        private String f4598f;
        private String f4599g;
        private String f4600h;
        private String f4601i;

        public int getDirection() {
            return this.f4595c;
        }

        public RouteNode getEntrace() {
            return this.f4596d;
        }

        public String getEntraceInstructions() {
            return this.f4599g;
        }

        public RouteNode getExit() {
            return this.f4597e;
        }

        public String getExitInstructions() {
            return this.f4600h;
        }

        public String getInstructions() {
            return this.f4601i;
        }

        public List<LatLng> getWayPoints() {
            if (this.mWayPoints == null) {
                this.mWayPoints = C0579a.m6362b(this.f4598f);
            }
            return this.mWayPoints;
        }
    }

    WalkingRouteLine() {
    }

    public List<WalkingStep> getAllStep() {
        return super.getAllStep();
    }
}
