.class public Landroid/view/PenManager;
.super Ljava/lang/Object;
.source "PenManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/PenManager$PenCallback;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 22
    return-void
.end method

.method public static getInstance()Landroid/view/PenManager;
    .locals 1

    .prologue
    .line 26
    new-instance v0, Landroid/view/PenManager;

    invoke-direct {v0}, Landroid/view/PenManager;-><init>()V

    return-object v0
.end method
