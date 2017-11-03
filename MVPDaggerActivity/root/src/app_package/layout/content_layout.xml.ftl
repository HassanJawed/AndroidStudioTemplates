<?xml version="1.0" encoding="utf-8"?>
<android.support.constraint.ConstraintLayout
		xmlns:android="http://schemas.android.com/apk/res/android"
		xmlns:app="http://schemas.android.com/apk/res-auto"
		xmlns:tools="http://schemas.android.com/tools"
		android:orientation="vertical"
		android:layout_width="match_parent"
		android:layout_height="match_parent"
		app:layout_behavior="@string/appbar_scrolling_view_behavior"
		tools:showIn="@layout/${layoutName}"
    	tools:context=".${relativeFeaturePackage}.${activityClass}"
		>

		<TextView
				android:layout_width="wrap_content"
				android:layout_height="wrap_content"
				android:text="${activityClass}"
        		app:layout_constraintTop_toTopOf="parent"
        		app:layout_constraintBottom_toBottomOf="parent"
				/>

</android.support.constraint.ConstraintLayout>