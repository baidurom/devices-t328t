.class public Lcom/htc/painting/penmenu15/RoundPenMenu$SettingData;
.super Ljava/lang/Object;
.source "RoundPenMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/painting/penmenu15/RoundPenMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SettingData"
.end annotation


# instance fields
.field public mCurrentPen:Lcom/htc/painting/penmenu15/core/PenRepresentation;

.field public mHistoryColors:[I

.field public mHistoryPens:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/painting/penmenu15/core/PenRepresentation;",
            ">;"
        }
    .end annotation
.end field

.field public mPenManager:Lcom/htc/painting/penmenu15/PenManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2009
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2011
    return-void
.end method
