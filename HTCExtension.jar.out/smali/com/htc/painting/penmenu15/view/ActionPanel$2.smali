.class synthetic Lcom/htc/painting/penmenu15/view/ActionPanel$2;
.super Ljava/lang/Object;
.source "ActionPanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/painting/penmenu15/view/ActionPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$htc$painting$penmenu15$core$InternalHLConfigListener$CHANGE_TYPE:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 617
    invoke-static {}, Lcom/htc/painting/penmenu15/core/InternalHLConfigListener$CHANGE_TYPE;->values()[Lcom/htc/painting/penmenu15/core/InternalHLConfigListener$CHANGE_TYPE;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/htc/painting/penmenu15/view/ActionPanel$2;->$SwitchMap$com$htc$painting$penmenu15$core$InternalHLConfigListener$CHANGE_TYPE:[I

    :try_start_0
    sget-object v0, Lcom/htc/painting/penmenu15/view/ActionPanel$2;->$SwitchMap$com$htc$painting$penmenu15$core$InternalHLConfigListener$CHANGE_TYPE:[I

    sget-object v1, Lcom/htc/painting/penmenu15/core/InternalHLConfigListener$CHANGE_TYPE;->PROVISION:Lcom/htc/painting/penmenu15/core/InternalHLConfigListener$CHANGE_TYPE;

    invoke-virtual {v1}, Lcom/htc/painting/penmenu15/core/InternalHLConfigListener$CHANGE_TYPE;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
