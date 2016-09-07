package com.fis.cdd.converter;

public interface BaseConverter<F, T> {
	T doForward(F f);

	F doBackward(T t);
}
