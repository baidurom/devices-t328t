.class public Lcom/htc/fm/ui/helper/Preset;
.super Ljava/lang/Object;
.source "Preset.java"


# instance fields
.field public Frequency:I

.field public Name:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .parameter "freq"
    .parameter "name"

    .prologue
    .line 6
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput p1, p0, Lcom/htc/fm/ui/helper/Preset;->Frequency:I

    .line 8
    iput-object p2, p0, Lcom/htc/fm/ui/helper/Preset;->Name:Ljava/lang/String;

    .line 9
    return-void
.end method
