package com.yf.gattlib.http.afinal.core;

import java.util.Collection;

/* compiled from: ProGuard */
public interface Queue<E> extends Collection<E> {
    boolean add(E e);

    E element();

    boolean offer(E e);

    E peek();

    E poll();

    E remove();
}
