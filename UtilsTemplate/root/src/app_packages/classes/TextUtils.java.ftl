package com.hassan.androidutils;

import android.widget.TextView;

import java.util.List;

/**
 * TextUtils
 *
 * @author Hassan Jawed
 * @since 9/13/13
 */
public class TextUtils {

	public static final String EMPTY = "";

	public static CharSequence emptyIfNull (CharSequence text) {
		return text == null ? EMPTY : text;
	}

	public static boolean isEmpty (String string) {
		return string == null || string.length() == 0;
	}

	public static boolean isEmpty (CharSequence string) {
		return string == null || string.length() == 0;
	}

	public static String getText (TextView textView) {
		return textView == null ? EMPTY : emptyIfNull( textView.getText() ).toString();
	}

	public static boolean areEquals(String a, String b) {
		return !isEmpty(a) && !isEmpty(b) && a.equals(b);
	}

	public static boolean check(String flag) {
		return !isEmpty(flag) && flag.contentEquals("1");
	}

	public static String joinShort(List<String> items) {
		// FIXME: 5/25/16 Change to default plurals implementation with formatArgs
		String startItems = android.text.TextUtils.join(", ", items.size() > 1 ? items.subList(0, 2) : items);
		if (items.size() == 3) {
			startItems = startItems + " & 1 other";
		}
		if (items.size() > 3) {
			startItems = startItems + " & " + (items.size() - 2) + " others";
		}
		return startItems;
	}
}
