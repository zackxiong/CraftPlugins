package com.yf.smart.weloopx.data;

import com.yf.smart.weloopx.data.models.ServerResult;

/* compiled from: ProGuard */
public class WeatherResult extends ServerResult {
    String PM25;
    String temperature;
    String weather;
    String wind;

    public String getPM25() {
        return this.PM25;
    }

    public void setPM25(String str) {
        this.PM25 = str;
    }

    public String getWeather() {
        return this.weather;
    }

    public void setWeather(String str) {
        this.weather = str;
    }

    public String getTemperature() {
        return this.temperature;
    }

    public void setTemperature(String str) {
        this.temperature = str;
    }

    public String getWind() {
        return this.wind;
    }

    public void setWind(String str) {
        this.wind = str;
    }
}
