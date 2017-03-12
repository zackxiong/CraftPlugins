package com.baidu.mapapi.search.core;

public class SearchResult {
    public ERRORNO error;

    public enum ERRORNO {
        NO_ERROR,
        RESULT_NOT_FOUND,
        AMBIGUOUS_KEYWORD,
        AMBIGUOUS_ROURE_ADDR,
        NOT_SUPPORT_BUS,
        NOT_SUPPORT_BUS_2CITY,
        ST_EN_TOO_NEAR,
        KEY_ERROR
    }

    public SearchResult() {
        this.error = ERRORNO.NO_ERROR;
    }

    public SearchResult(ERRORNO errorno) {
        this.error = errorno;
    }
}
