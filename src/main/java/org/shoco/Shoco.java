package org.shoco;

public class Shoco {

	static {
		System.out.println(System.getProperty("java.library.path"));
		System.loadLibrary("shocolibjni");
	}

	public static native String compress(String s);

	public static native String decompress(String s, int compressedLength);

	public static String decompress(String s) {
		return decompress(s, s.length());
	}

	public static void main(String[] args) {
		String s = "This is a string which is used for test";
		String c = compress(s);
		System.out.println(c);
		String d = decompress(c);
		System.out.println(d);
	}
}
