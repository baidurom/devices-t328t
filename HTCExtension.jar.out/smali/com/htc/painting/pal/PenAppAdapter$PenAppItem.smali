.class Lcom/htc/painting/pal/PenAppAdapter$PenAppItem;
.super Ljava/lang/Object;
.source "PenAppAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/painting/pal/PenAppAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PenAppItem"
.end annotation


# instance fields
.field final mApp:Lcom/htc/painting/pal/PenApp;

.field mEnabled:Z


# direct methods
.method public constructor <init>(Lcom/htc/painting/pal/PenApp;)V
    .locals 1
    .parameter "app"

    .prologue
    .line 286
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 280
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/painting/pal/PenAppAdapter$PenAppItem;->mEnabled:Z

    .line 287
    iput-object p1, p0, Lcom/htc/painting/pal/PenAppAdapter$PenAppItem;->mApp:Lcom/htc/painting/pal/PenApp;

    .line 288
    return-void
.end method
