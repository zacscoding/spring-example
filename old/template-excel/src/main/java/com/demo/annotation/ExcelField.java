package com.demo.annotation;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

@Target(ElementType.FIELD)
@Retention(RetentionPolicy.RUNTIME)
public @interface ExcelField {	
	/**
	 * Cell Name
	 */
	String cellValue() default "";
	/**
	 * ClassType
	 */
	ExcelFieldType fieldType() default ExcelFieldType.Primitive;	
	/**
	 * Cell order (start :: 0)
	 */
	int cellOrder();
	/**
	 * Cell null able
	 */
	boolean notNull() default false;
	/**
	 * Regex
	 */
	String regex() default "";
}