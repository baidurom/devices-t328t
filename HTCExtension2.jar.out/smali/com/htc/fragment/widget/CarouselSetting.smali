.class Lcom/htc/fragment/widget/CarouselSetting;
.super Ljava/lang/Object;
.source "CarouselSetting.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/fragment/widget/CarouselSetting$BaseTaskColumns;
    }
.end annotation


# static fields
.field static final TAKCOLUMNNAMES:[Ljava/lang/String;

.field static final TASKCONTENTCOLUMNS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 98
    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "task_tag"

    aput-object v1, v0, v4

    const-string v1, "task_name"

    aput-object v1, v0, v5

    const-string v1, "alternative_name"

    aput-object v1, v0, v6

    const-string v1, "intent"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "res_package"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "icon_resource"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "selected_icon_resource"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "overlay_resource"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "task_order"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "is_host"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "tab_id"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "count_text"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "count_text_visible"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "is_removable"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "is_updated"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/fragment/widget/CarouselSetting;->TAKCOLUMNNAMES:[Ljava/lang/String;

    .line 105
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "task_tag"

    aput-object v1, v0, v4

    const-string v1, "task_name"

    aput-object v1, v0, v5

    const-string v1, "alternative_name"

    aput-object v1, v0, v6

    const-string v1, "res_package"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "overlay_resource"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/fragment/widget/CarouselSetting;->TASKCONTENTCOLUMNS:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 19
    return-void
.end method
