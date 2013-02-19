.class public interface abstract Lcom/htc/widget/QuickTips$TipItem;
.super Ljava/lang/Object;
.source "QuickTips.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/widget/QuickTips;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "TipItem"
.end annotation


# static fields
.field public static final LOCATION_BOTTOM:I = 0x20

.field public static final LOCATION_CENTER:I = 0x2

.field public static final LOCATION_LEFT:I = 0x1

.field public static final LOCATION_MIDDLE:I = 0x10

.field public static final LOCATION_RIGHT:I = 0x4

.field public static final LOCATION_TOP:I = 0x8


# virtual methods
.method public abstract destroy()V
.end method

.method public abstract draw(Landroid/graphics/Canvas;)V
.end method

.method public abstract getBounds()Landroid/graphics/Rect;
.end method

.method public abstract originate(I)Lcom/htc/widget/QuickTips$TipItem;
.end method

.method public abstract setAnchor(Lcom/htc/widget/QuickTips$TipAnchor;)V
.end method

.method public abstract setPaint(Landroid/graphics/Paint;)V
.end method
