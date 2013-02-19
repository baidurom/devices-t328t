.class public Landroid/hardware/Camera$Ot;
.super Ljava/lang/Object;
.source "Camera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Ot"
.end annotation


# instance fields
.field public id:I

.field public rect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1148
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1153
    const/4 v0, -0x1

    iput v0, p0, Landroid/hardware/Camera$Ot;->id:I

    .line 1149
    return-void
.end method
