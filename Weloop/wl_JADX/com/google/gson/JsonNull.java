package com.google.gson;

/* compiled from: ProGuard */
public final class JsonNull extends JsonElement {
    public static final JsonNull INSTANCE;

    static {
        INSTANCE = new JsonNull();
    }

    JsonNull deepCopy() {
        return INSTANCE;
    }

    public int hashCode() {
        return JsonNull.class.hashCode();
    }

    public boolean equals(Object obj) {
        return this == obj || (obj instanceof JsonNull);
    }
}
