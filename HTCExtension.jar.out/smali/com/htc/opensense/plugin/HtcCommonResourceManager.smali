.class public final Lcom/htc/opensense/plugin/HtcCommonResourceManager;
.super Ljava/lang/Object;
.source "HtcCommonResourceManager.java"


# static fields
.field public static final COMMON_COMMAND_BAR:I = 0x7d3

.field public static final COMMON_LIST_ITEM:I = 0x7d1

.field public static final COMMON_TITLE:I = 0x7d2

.field public static final INVALID_LIST_ITEM_LAYOUT:I = -0x1

.field private static final SUPPORTED_COMMAND_BAR_LAYOUTS:[I

.field private static final SUPPORTED_LIST_ITEM_LAYOUTS:[I

.field private static final SUPPORTED_TITLE_LAYOUTS:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 29
    const/16 v0, 0xc

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/htc/opensense/plugin/HtcCommonResourceManager;->SUPPORTED_LIST_ITEM_LAYOUTS:[I

    .line 42
    new-array v0, v1, [I

    sput-object v0, Lcom/htc/opensense/plugin/HtcCommonResourceManager;->SUPPORTED_TITLE_LAYOUTS:[I

    .line 43
    new-array v0, v1, [I

    sput-object v0, Lcom/htc/opensense/plugin/HtcCommonResourceManager;->SUPPORTED_COMMAND_BAR_LAYOUTS:[I

    return-void

    .line 29
    nop

    :array_0
    .array-data 0x4
        0xdt 0x0t 0x9t 0x1t
        0x3t 0x0t 0x9t 0x1t
        0x4t 0x0t 0x9t 0x1t
        0xft 0x0t 0x9t 0x1t
        0x10t 0x0t 0x9t 0x1t
        0x5t 0x0t 0x9t 0x1t
        0x6t 0x0t 0x9t 0x1t
        0x7t 0x0t 0x9t 0x1t
        0x47t 0x0t 0x9t 0x2t
        0x48t 0x0t 0x9t 0x2t
        0x49t 0x0t 0x9t 0x2t
        0x41t 0x0t 0x9t 0x2t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getListItemLayoutCount()I
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/htc/opensense/plugin/HtcCommonResourceManager;->SUPPORTED_LIST_ITEM_LAYOUTS:[I

    array-length v0, v0

    return v0
.end method

.method public static final getListItemLayouts()[I
    .locals 1

    .prologue
    .line 99
    sget-object v0, Lcom/htc/opensense/plugin/HtcCommonResourceManager;->SUPPORTED_LIST_ITEM_LAYOUTS:[I

    return-object v0
.end method

.method public static final isSupported(I)Z
    .locals 5
    .parameter "layout_id"

    .prologue
    .line 57
    sget-object v0, Lcom/htc/opensense/plugin/HtcCommonResourceManager;->SUPPORTED_LIST_ITEM_LAYOUTS:[I

    .local v0, arr$:[I
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v3, :cond_1

    aget v2, v0, v1

    .line 58
    .local v2, layout:I
    if-ne v2, p0, :cond_0

    .line 59
    const/4 v4, 0x1

    .line 62
    .end local v2           #layout:I
    :goto_1
    return v4

    .line 57
    .restart local v2       #layout:I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 62
    .end local v2           #layout:I
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public static final isSupported(II)Z
    .locals 6
    .parameter "type"
    .parameter "layout_id"

    .prologue
    const/4 v5, 0x0

    .line 70
    packed-switch p0, :pswitch_data_0

    .line 88
    :cond_0
    :goto_0
    return v5

    .line 72
    :pswitch_0
    sget-object v3, Lcom/htc/opensense/plugin/HtcCommonResourceManager;->SUPPORTED_LIST_ITEM_LAYOUTS:[I

    .line 83
    .local v3, layout_ids:[I
    :goto_1
    move-object v0, v3

    .local v0, arr$:[I
    array-length v4, v0

    .local v4, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_2
    if-ge v1, v4, :cond_0

    aget v2, v0, v1

    .line 84
    .local v2, layout:I
    if-ne v2, p1, :cond_1

    .line 85
    const/4 v5, 0x1

    goto :goto_0

    .line 75
    .end local v0           #arr$:[I
    .end local v1           #i$:I
    .end local v2           #layout:I
    .end local v3           #layout_ids:[I
    .end local v4           #len$:I
    :pswitch_1
    sget-object v3, Lcom/htc/opensense/plugin/HtcCommonResourceManager;->SUPPORTED_TITLE_LAYOUTS:[I

    .line 76
    .restart local v3       #layout_ids:[I
    goto :goto_1

    .line 78
    .end local v3           #layout_ids:[I
    :pswitch_2
    sget-object v3, Lcom/htc/opensense/plugin/HtcCommonResourceManager;->SUPPORTED_COMMAND_BAR_LAYOUTS:[I

    .line 79
    .restart local v3       #layout_ids:[I
    goto :goto_1

    .line 83
    .restart local v0       #arr$:[I
    .restart local v1       #i$:I
    .restart local v2       #layout:I
    .restart local v4       #len$:I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 70
    nop

    :pswitch_data_0
    .packed-switch 0x7d1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
