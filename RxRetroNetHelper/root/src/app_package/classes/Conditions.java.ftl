package ${utilsPackage};

import java.util.ArrayList;
import java.util.List;

public class Conditions {

    public static <T> void notNull(T value, DoAction<T> action) {
        if (value != null && action != null) {
            action.perform(value);
        }
    }

    public static <T> List<T> checkList(List<T> list) {
        return isEmptyList(list) ? new ArrayList<T>(0) : list;
    }

    public static <T> boolean isEmptyList(List<T> list) {
        return list == null || list.size() <= 0 || list.isEmpty();
    }
}
