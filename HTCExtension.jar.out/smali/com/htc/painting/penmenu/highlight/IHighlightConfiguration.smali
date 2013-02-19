.class public interface abstract Lcom/htc/painting/penmenu/highlight/IHighlightConfiguration;
.super Ljava/lang/Object;
.source "IHighlightConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/painting/penmenu/highlight/IHighlightConfiguration$IHightlightConfigListener;
    }
.end annotation


# static fields
.field public static final STATE_OFF:I = 0x64

.field public static final STATE_ON:I = 0x65

.field public static final STATE_UNHIGHLIGHT:I = 0x66


# virtual methods
.method public abstract addHighlightConfigListener(Lcom/htc/painting/penmenu/highlight/IHighlightConfiguration$IHightlightConfigListener;)V
.end method

.method public abstract getConfigOption(Ljava/lang/String;)Ljava/lang/Object;
.end method

.method public abstract getConfigState()I
.end method

.method public abstract release()V
.end method

.method public abstract removeHighlightConfigListener(Lcom/htc/painting/penmenu/highlight/IHighlightConfiguration$IHightlightConfigListener;)V
.end method

.method public abstract setConfigOption(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V
.end method

.method public abstract setConfigState(ILjava/lang/String;)V
.end method
