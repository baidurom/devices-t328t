.class public interface abstract Lcom/htc/home/WidgetViewInterface;
.super Ljava/lang/Object;
.source "WidgetViewInterface.java"


# static fields
.field public static final RESIZE_BOTH:I = 0x3

.field public static final RESIZE_HORIZONTAL:I = 0x1

.field public static final RESIZE_NONE:I = 0x0

.field public static final RESIZE_VERTICAL:I = 0x2


# virtual methods
.method public abstract getLayoutResource()I
.end method

.method public abstract getMinSpanX()I
.end method

.method public abstract getMinSpanY()I
.end method

.method public abstract getResizeMode()I
.end method

.method public abstract getResizeUnitX()I
.end method

.method public abstract getResizeUnitY()I
.end method

.method public abstract getSpanX()I
.end method

.method public abstract getSpanY()I
.end method

.method public abstract isHandleDirectionalKey()Z
.end method

.method public abstract onActivityDestroy()V
.end method

.method public abstract onActivityPause()V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract onActivityResult(IILandroid/content/Intent;)V
.end method

.method public abstract onActivityResume()V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract onActivityStop()V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract onLayoutInflated(Landroid/view/View;ILandroid/content/Intent;)V
.end method

.method public abstract onLayoutRemoved()V
.end method

.method public abstract onSpanChanged(II)V
.end method

.method public abstract setHost(Lcom/htc/home/HostInterface;)V
.end method

.method public abstract setHostActivity(Lcom/htc/home/HostActivity;)V
.end method
