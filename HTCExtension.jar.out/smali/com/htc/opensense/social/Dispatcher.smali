.class public abstract Lcom/htc/opensense/social/Dispatcher;
.super Ljava/lang/Object;
.source "Dispatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/opensense/social/Dispatcher$OnOperationComplete;
    }
.end annotation


# static fields
.field public static final API_ERROR:I = 0x1

.field public static final AUTHENTICTION_ERROR:I = 0x2

.field public static final GENERAL_ERROR:I = 0x3

.field public static final NETWORK_ERROR:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 33
    return-void
.end method


# virtual methods
.method public abstract release()V
.end method

.method public abstract runOperation(Ljava/lang/String;Ljava/lang/Object;Lcom/htc/opensense/social/Dispatcher$OnOperationComplete;)V
.end method
