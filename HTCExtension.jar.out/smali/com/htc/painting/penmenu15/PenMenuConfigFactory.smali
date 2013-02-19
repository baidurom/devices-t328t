.class public Lcom/htc/painting/penmenu15/PenMenuConfigFactory;
.super Ljava/lang/Object;
.source "PenMenuConfigFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getHighlightConfigForTablet15()Lcom/htc/painting/penmenu/highlight/IHighlightConfig15;
    .locals 1

    .prologue
    .line 9
    new-instance v0, Lcom/htc/painting/penmenu15/highlight/HighlightConfig15;

    invoke-direct {v0}, Lcom/htc/painting/penmenu15/highlight/HighlightConfig15;-><init>()V

    return-object v0
.end method


# virtual methods
.method public getDefaultHighlightConfig()Lcom/htc/painting/penmenu/highlight/IHighlightConfiguration;
    .locals 1

    .prologue
    .line 13
    new-instance v0, Lcom/htc/painting/penmenu15/highlight/HighlightConfig15;

    invoke-direct {v0}, Lcom/htc/painting/penmenu15/highlight/HighlightConfig15;-><init>()V

    return-object v0
.end method
