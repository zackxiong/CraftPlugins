package com.google.gson;

import java.lang.reflect.Type;

/* compiled from: ProGuard */
public interface JsonDeserializationContext {
    <T> T deserialize(JsonElement jsonElement, Type type);
}
