.class Landroid/webkit/ZoomManager$HTCSmartZoom$2;
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

.field final synthetic val$nX:I

.field final synthetic val$nY:I


# direct methods
.method constructor <init>(Landroid/webkit/ZoomManager$HTCSmartZoom;II)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1603
    iput-object p1, p0, Landroid/webkit/ZoomManager$HTCSmartZoom$2;->this$1:Landroid/webkit/ZoomManager$HTCSmartZoom;

    iput p2, p0, Landroid/webkit/ZoomManager$HTCSmartZoom$2;->val$nX:I

    iput p3, p0, Landroid/webkit/ZoomManager$HTCSmartZoom$2;->val$nY:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1605
    iget-object v0, p0, Landroid/webkit/ZoomManager$HTCSmartZoom$2;->this$1:Landroid/webkit/ZoomManager$HTCSmartZoom;

    iget-object v0, v0, Landroid/webkit/ZoomManager$HTCSmartZoom;->this$0:Landroid/webkit/ZoomManager;

    iget-object v0, v0, Landroid/webkit/ZoomManager;->mSmartZoom:Landroid/webkit/ZoomManager$HTCSmartZoom;

    iget v1, p0, Landroid/webkit/ZoomManager$HTCSmartZoom$2;->val$nX:I

    iget v2, p0, Landroid/webkit/ZoomManager$HTCSmartZoom$2;->val$nY:I

    #calls: Landroid/webkit/ZoomManager$HTCSmartZoom;->SmartTouchUp(II)V
    invoke-static {v0, v1, v2}, Landroid/webkit/ZoomManager$HTCSmartZoom;->access$2100(Landroid/webkit/ZoomManager$HTCSmartZoom;II)V

    .line 1606
    return-void
.end method
