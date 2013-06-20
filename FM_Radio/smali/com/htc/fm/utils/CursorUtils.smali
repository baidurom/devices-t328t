.class public Lcom/htc/fm/utils/CursorUtils;
.super Ljava/lang/Object;
.source "CursorUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInt(Landroid/database/Cursor;Ljava/lang/String;)I
    .locals 3
    .parameter "cursor"
    .parameter "column"

    .prologue
    .line 16
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 17
    .local v0, columnID:I
    const v1, 0x7fffffff

    .line 18
    .local v1, value:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 19
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 21
    :cond_0
    return v1
.end method

.method public static getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "cursor"
    .parameter "column"

    .prologue
    .line 8
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 9
    .local v0, columnID:I
    const/4 v1, 0x0

    .line 10
    .local v1, value:Ljava/lang/String;
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 11
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 13
    :cond_0
    return-object v1
.end method
