.class Landroid/webkit/ZoomManager$HTCSmartZoom$1;
.super Ljava/lang/Object;
.source "ZoomManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/webkit/ZoomManager$HTCSmartZoom;->doDoubleTap(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/webkit/ZoomManager$HTCSmartZoom;

.field final synthetic val$HitNodeTmp:I


# direct methods
.method constructor <init>(Landroid/webkit/ZoomManager$HTCSmartZoom;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1595
    iput-object p1, p0, Landroid/webkit/ZoomManager$HTCSmartZoom$1;->this$1:Landroid/webkit/ZoomManager$HTCSmartZoom;

    iput p2, p0, Landroid/webkit/ZoomManager$HTCSmartZoom$1;->val$HitNodeTmp:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1597
    iget-object v0, p0, Landroid/webkit/ZoomManager$HTCSmartZoom$1;->this$1:Landroid/webkit/ZoomManager$HTCSmartZoom;

    iget-object v0, v0, Landroid/webkit/ZoomManager$HTCSmartZoom;->this$0:Landroid/webkit/ZoomManager;

    iget-object v0, v0, Landroid/webkit/ZoomManager;->mSmartZoom:Landroid/webkit/ZoomManager$HTCSmartZoom;

    iget v1, p0, Landroid/webkit/ZoomManager$HTCSmartZoom$1;->val$HitNodeTmp:I

    #calls: Landroid/webkit/ZoomManager$HTCSmartZoom;->SmartTouchUp(I)V
    invoke-static {v0, v1}, Landroid/webkit/ZoomManager$HTCSmartZoom;->access$2000(Landroid/webkit/ZoomManager$HTCSmartZoom;I)V

    .line 1598
    return-void
.end method
