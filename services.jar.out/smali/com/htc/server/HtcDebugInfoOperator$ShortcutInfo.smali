.class Lcom/htc/server/HtcDebugInfoOperator$ShortcutInfo;
.super Ljava/lang/Object;
.source "HtcDebugInfoOperator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/server/HtcDebugInfoOperator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ShortcutInfo"
.end annotation


# instance fields
.field mAppName:Ljava/lang/String;

.field mClassName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "className"
    .parameter "appName"

    .prologue
    .line 637
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 638
    iput-object p1, p0, Lcom/htc/server/HtcDebugInfoOperator$ShortcutInfo;->mClassName:Ljava/lang/String;

    .line 639
    iput-object p2, p0, Lcom/htc/server/HtcDebugInfoOperator$ShortcutInfo;->mAppName:Ljava/lang/String;

    .line 640
    return-void
.end method
