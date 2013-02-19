.class public Lcom/htc/wrap/android/app/HtcWrapActivity;
.super Landroid/app/Activity;
.source "HtcWrapActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 10
    return-void
.end method

.method public static managedQuery(Landroid/app/Activity;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1
    .parameter "activity"
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "sortOrder"

    .prologue
    .line 30
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/app/Activity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public static overrideRotateAnimation(Landroid/app/Activity;I)V
    .locals 0
    .parameter "activity"
    .parameter "type"

    .prologue
    .line 24
    invoke-virtual {p0, p1}, Landroid/app/Activity;->overrideRotateAnimation(I)V

    .line 25
    return-void
.end method


# virtual methods
.method public final managedQuery(Landroid/app/Activity;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1
    .parameter "activity"
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    .line 34
    invoke-virtual/range {p1 .. p6}, Landroid/app/Activity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public overrideRotateAnimation(I)V
    .locals 0
    .parameter "type"

    .prologue
    .line 20
    invoke-super {p0, p1}, Landroid/app/Activity;->overrideRotateAnimation(I)V

    .line 21
    return-void
.end method
