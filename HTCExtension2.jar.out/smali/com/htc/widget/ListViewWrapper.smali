.class public Lcom/htc/widget/ListViewWrapper;
.super Ljava/lang/Object;
.source "ListViewWrapper.java"


# static fields
.field public static final ANIM_CLICK:I = 0x4

.field public static final ANIM_OVERSCROLL:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static enableAnimation(Landroid/widget/ListView;IZ)V
    .locals 0
    .parameter "list"
    .parameter "anim_id"
    .parameter "enable"

    .prologue
    .line 23
    invoke-virtual {p0, p1, p2}, Landroid/widget/ListView;->enableAnimation(IZ)V

    .line 24
    return-void
.end method
