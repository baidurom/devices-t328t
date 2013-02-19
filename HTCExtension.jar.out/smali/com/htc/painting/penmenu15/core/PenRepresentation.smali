.class public interface abstract Lcom/htc/painting/penmenu15/core/PenRepresentation;
.super Ljava/lang/Object;
.source "PenRepresentation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/painting/penmenu15/core/PenRepresentation$PenRepresentationObserver;
    }
.end annotation


# static fields
.field public static final UNUSED:J


# virtual methods
.method public abstract clone(Landroid/content/Context;)Lcom/htc/painting/penmenu15/core/PenRepresentation;
.end method

.method public abstract copyFrom(Lcom/htc/painting/penmenu15/core/PenRepresentation;)Z
.end method

.method public abstract exactSamePen(Lcom/htc/painting/penmenu15/core/PenRepresentation;)Z
.end method

.method public abstract getColor()I
.end method

.method public abstract getCurrentPenIcon()Landroid/graphics/Bitmap;
.end method

.method public abstract getLastUsedTime()J
.end method

.method public abstract getOptionIcon()Landroid/graphics/Bitmap;
.end method

.method public abstract getPenType()Lcom/htc/painting/penmenu15/core/PenType;
.end method

.method public abstract getSize()I
.end method

.method public abstract markLastUsed(J)V
.end method

.method public abstract samePenType(Lcom/htc/painting/penmenu15/core/PenRepresentation;)Z
.end method

.method public abstract setColor(I)V
.end method

.method public abstract setObserver(Lcom/htc/painting/penmenu15/core/PenRepresentation$PenRepresentationObserver;)V
.end method

.method public abstract setPenSize(I)V
.end method
