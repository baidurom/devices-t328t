.class public Lcom/htc/wrap/com/android/internal/telephony/HtcWrapCommandException;
.super Ljava/lang/Object;
.source "HtcWrapCommandException.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/wrap/com/android/internal/telephony/HtcWrapCommandException$1;,
        Lcom/htc/wrap/com/android/internal/telephony/HtcWrapCommandException$Error;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 7
    return-void
.end method

.method public static isCommandExceptionError(Lcom/android/internal/telephony/CommandException$Error;Lcom/htc/wrap/com/android/internal/telephony/HtcWrapCommandException$Error;)Z
    .locals 4
    .parameter "cee"
    .parameter "htcWrapError"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 39
    sget-object v2, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapCommandException$1;->$SwitchMap$com$htc$wrap$com$android$internal$telephony$HtcWrapCommandException$Error:[I

    invoke-virtual {p1}, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapCommandException$Error;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    move v0, v1

    .line 182
    :cond_0
    :goto_0
    return v0

    .line 41
    :pswitch_0
    sget-object v2, Lcom/android/internal/telephony/CommandException$Error;->INVALID_RESPONSE:Lcom/android/internal/telephony/CommandException$Error;

    if-eq p0, v2, :cond_0

    move v0, v1

    .line 44
    goto :goto_0

    .line 46
    :pswitch_1
    sget-object v2, Lcom/android/internal/telephony/CommandException$Error;->RADIO_NOT_AVAILABLE:Lcom/android/internal/telephony/CommandException$Error;

    if-eq p0, v2, :cond_0

    move v0, v1

    .line 49
    goto :goto_0

    .line 51
    :pswitch_2
    sget-object v2, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    if-eq p0, v2, :cond_0

    move v0, v1

    .line 54
    goto :goto_0

    .line 56
    :pswitch_3
    sget-object v2, Lcom/android/internal/telephony/CommandException$Error;->PASSWORD_INCORRECT:Lcom/android/internal/telephony/CommandException$Error;

    if-eq p0, v2, :cond_0

    move v0, v1

    .line 59
    goto :goto_0

    .line 61
    :pswitch_4
    sget-object v2, Lcom/android/internal/telephony/CommandException$Error;->SIM_PIN2:Lcom/android/internal/telephony/CommandException$Error;

    if-eq p0, v2, :cond_0

    move v0, v1

    .line 64
    goto :goto_0

    .line 66
    :pswitch_5
    sget-object v2, Lcom/android/internal/telephony/CommandException$Error;->SIM_PUK2:Lcom/android/internal/telephony/CommandException$Error;

    if-eq p0, v2, :cond_0

    move v0, v1

    .line 69
    goto :goto_0

    .line 71
    :pswitch_6
    sget-object v2, Lcom/android/internal/telephony/CommandException$Error;->REQUEST_NOT_SUPPORTED:Lcom/android/internal/telephony/CommandException$Error;

    if-eq p0, v2, :cond_0

    move v0, v1

    .line 74
    goto :goto_0

    .line 76
    :pswitch_7
    sget-object v2, Lcom/android/internal/telephony/CommandException$Error;->OP_NOT_ALLOWED_DURING_VOICE_CALL:Lcom/android/internal/telephony/CommandException$Error;

    if-eq p0, v2, :cond_0

    move v0, v1

    .line 79
    goto :goto_0

    .line 81
    :pswitch_8
    sget-object v2, Lcom/android/internal/telephony/CommandException$Error;->OP_NOT_ALLOWED_BEFORE_REG_NW:Lcom/android/internal/telephony/CommandException$Error;

    if-eq p0, v2, :cond_0

    move v0, v1

    .line 84
    goto :goto_0

    .line 86
    :pswitch_9
    sget-object v2, Lcom/android/internal/telephony/CommandException$Error;->SMS_FAIL_RETRY:Lcom/android/internal/telephony/CommandException$Error;

    if-eq p0, v2, :cond_0

    move v0, v1

    .line 89
    goto :goto_0

    .line 91
    :pswitch_a
    sget-object v2, Lcom/android/internal/telephony/CommandException$Error;->SIM_ABSENT:Lcom/android/internal/telephony/CommandException$Error;

    if-eq p0, v2, :cond_0

    move v0, v1

    .line 94
    goto :goto_0

    .line 96
    :pswitch_b
    sget-object v2, Lcom/android/internal/telephony/CommandException$Error;->SUBSCRIPTION_NOT_AVAILABLE:Lcom/android/internal/telephony/CommandException$Error;

    if-eq p0, v2, :cond_0

    move v0, v1

    .line 99
    goto :goto_0

    .line 101
    :pswitch_c
    sget-object v2, Lcom/android/internal/telephony/CommandException$Error;->MODE_NOT_SUPPORTED:Lcom/android/internal/telephony/CommandException$Error;

    if-eq p0, v2, :cond_0

    move v0, v1

    .line 104
    goto :goto_0

    .line 106
    :pswitch_d
    sget-object v2, Lcom/android/internal/telephony/CommandException$Error;->FDN_CHECK_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    if-eq p0, v2, :cond_0

    move v0, v1

    .line 109
    goto :goto_0

    .line 111
    :pswitch_e
    sget-object v2, Lcom/android/internal/telephony/CommandException$Error;->ILLEGAL_SIM_OR_ME:Lcom/android/internal/telephony/CommandException$Error;

    if-eq p0, v2, :cond_0

    move v0, v1

    .line 114
    goto :goto_0

    .line 116
    :pswitch_f
    sget-object v2, Lcom/android/internal/telephony/CommandException$Error;->MISSING_RESOURCE:Lcom/android/internal/telephony/CommandException$Error;

    if-eq p0, v2, :cond_0

    move v0, v1

    .line 119
    goto :goto_0

    .line 121
    :pswitch_10
    sget-object v2, Lcom/android/internal/telephony/CommandException$Error;->NO_SUCH_ELEMENT:Lcom/android/internal/telephony/CommandException$Error;

    if-eq p0, v2, :cond_0

    move v0, v1

    .line 124
    goto :goto_0

    .line 126
    :pswitch_11
    sget-object v2, Lcom/android/internal/telephony/CommandException$Error;->SIM_FAIL:Lcom/android/internal/telephony/CommandException$Error;

    if-eq p0, v2, :cond_0

    move v0, v1

    .line 129
    goto :goto_0

    .line 131
    :pswitch_12
    sget-object v2, Lcom/android/internal/telephony/CommandException$Error;->DUE_TO_FDN:Lcom/android/internal/telephony/CommandException$Error;

    if-eq p0, v2, :cond_0

    move v0, v1

    .line 134
    goto :goto_0

    .line 136
    :pswitch_13
    sget-object v2, Lcom/android/internal/telephony/CommandException$Error;->PB_MEM_FULL:Lcom/android/internal/telephony/CommandException$Error;

    if-eq p0, v2, :cond_0

    move v0, v1

    .line 139
    goto :goto_0

    .line 141
    :pswitch_14
    sget-object v2, Lcom/android/internal/telephony/CommandException$Error;->PW_REGISTRATION_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    if-eq p0, v2, :cond_0

    move v0, v1

    .line 144
    goto :goto_0

    .line 146
    :pswitch_15
    sget-object v2, Lcom/android/internal/telephony/CommandException$Error;->NEGATIVE_PW_CHECK:Lcom/android/internal/telephony/CommandException$Error;

    if-eq p0, v2, :cond_0

    move v0, v1

    .line 149
    goto/16 :goto_0

    .line 151
    :pswitch_16
    sget-object v2, Lcom/android/internal/telephony/CommandException$Error;->NUM_OF_PW_ATTEMPTS_VIOLATION:Lcom/android/internal/telephony/CommandException$Error;

    if-eq p0, v2, :cond_0

    move v0, v1

    .line 154
    goto/16 :goto_0

    .line 156
    :pswitch_17
    sget-object v2, Lcom/android/internal/telephony/CommandException$Error;->DUE_TO_CB:Lcom/android/internal/telephony/CommandException$Error;

    if-eq p0, v2, :cond_0

    move v0, v1

    .line 159
    goto/16 :goto_0

    .line 161
    :pswitch_18
    sget-object v2, Lcom/android/internal/telephony/CommandException$Error;->FDN_NOT_SUPPORT:Lcom/android/internal/telephony/CommandException$Error;

    if-eq p0, v2, :cond_0

    move v0, v1

    .line 164
    goto/16 :goto_0

    .line 166
    :pswitch_19
    sget-object v2, Lcom/android/internal/telephony/CommandException$Error;->NW_SCAN_NOT_ALLOWED:Lcom/android/internal/telephony/CommandException$Error;

    if-eq p0, v2, :cond_0

    move v0, v1

    .line 169
    goto/16 :goto_0

    .line 171
    :pswitch_1a
    sget-object v2, Lcom/android/internal/telephony/CommandException$Error;->SETUP_DATA_CALL_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    if-eq p0, v2, :cond_0

    move v0, v1

    .line 174
    goto/16 :goto_0

    .line 176
    :pswitch_1b
    sget-object v2, Lcom/android/internal/telephony/CommandException$Error;->INVALID_PARAMETER:Lcom/android/internal/telephony/CommandException$Error;

    if-eq p0, v2, :cond_0

    move v0, v1

    .line 179
    goto/16 :goto_0

    .line 39
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
    .end packed-switch
.end method
