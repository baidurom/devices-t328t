.class public interface abstract Lcom/android/internal/telephony/TelephonyProperties;
.super Ljava/lang/Object;
.source "TelephonyProperties.java"


# static fields
.field public static final CURRENT_ACTIVE_PHONE:Ljava/lang/String; = "gsm.current.phone-type"

.field public static final PROPERTY_BASEBAND_VERSION:Ljava/lang/String; = "gsm.version.baseband"

.field public static final PROPERTY_CALL_RING_DELAY:Ljava/lang/String; = "ro.telephony.call_ring.delay"

.field public static final PROPERTY_CB_CHANNEL:Ljava/lang/String; = "gsm.sim.cbmi.channel"

.field public static final PROPERTY_CB_LP:Ljava/lang/String; = "gsm.cb.lp"

.field public static final PROPERTY_CB_MAX_CHANNEL:Ljava/lang/String; = "gsm.cb.max.channel"

.field public static final PROPERTY_CDMA_MSG_ID:Ljava/lang/String; = "persist.radio.cdma.msgid"

.field public static final PROPERTY_CDMA_MSG_PRIORITY:Ljava/lang/String; = "persist.sys.priority"

.field public static final PROPERTY_CDMA_SMS_OCTET_ENCODE:Ljava/lang/String; = "persist.sys.sms.octet_encode"

.field public static final PROPERTY_CT_FEATURE_ENABLE:Ljava/lang/String; = "ro.ct.feature.enable"

.field public static final PROPERTY_DATA_NETWORK_TYPE:Ljava/lang/String; = "gsm.network.type"

.field public static final PROPERTY_DATA_NETWORK_TYPE_CDMA:Ljava/lang/String; = "gsm.cdma.network.type"

.field public static final PROPERTY_DATA_NETWORK_TYPE_GSM:Ljava/lang/String; = "gsm.gsm.network.type"

.field public static final PROPERTY_DATA_NETWORK_TYPE_SUB_PHONE:Ljava/lang/String; = "gsm.sub.network.type"

.field public static final PROPERTY_DEFAULT_MAIN_PHONE_NAME:Ljava/lang/String; = "ro.tel.def_main_phone"

.field public static final PROPERTY_DEFAULT_SUB_PHONE_NAME:Ljava/lang/String; = "ro.tel.def_sub_phone"

.field public static final PROPERTY_DIAL_TYPE:Ljava/lang/String; = "cdma.dial.type"

.field public static final PROPERTY_DISABLE_CALL:Ljava/lang/String; = "ro.telephony.disable-call"

.field public static final PROPERTY_DUAL_GSM_PHONE_ENABLE:Ljava/lang/String; = "ro.tel.dualGSMphone_enable"

.field public static final PROPERTY_DUAL_PHONE_ENABLE:Ljava/lang/String; = "ro.tel.dualphone_enable"

.field public static final PROPERTY_ECM_EXIT_TIMER:Ljava/lang/String; = "ro.cdma.ecmexittimer"

.field public static final PROPERTY_ECM_OOS_TIMER:Ljava/lang/String; = "ro.cdma.ecm-oos-timer"

.field public static final PROPERTY_GSM_DATA_NETWORK_TYPE:Ljava/lang/String; = "gsm.data.network.type"

.field public static final PROPERTY_ICC_APN_OPERATOR_NUMERIC:Ljava/lang/String; = "gsm.apn.operator.numeric"

.field public static final PROPERTY_ICC_OPERATOR_ALPHA:Ljava/lang/String; = "gsm.sim.operator.alpha"

.field public static final PROPERTY_ICC_OPERATOR_ALPHA_CDMA:Ljava/lang/String; = "gsm.cdma.uim.operator.alpha"

.field public static final PROPERTY_ICC_OPERATOR_ALPHA_GSM:Ljava/lang/String; = "gsm.gsm.sim.operator.alpha"

.field public static final PROPERTY_ICC_OPERATOR_ALPHA_SUB_PHONE:Ljava/lang/String; = "gsm.sub.icc.operator.alpha"

.field public static final PROPERTY_ICC_OPERATOR_ISO_COUNTRY:Ljava/lang/String; = "gsm.sim.operator.iso-country"

.field public static final PROPERTY_ICC_OPERATOR_ISO_COUNTRY_CDMA:Ljava/lang/String; = "gsm.cdma.uim.oprt.iso-country"

.field public static final PROPERTY_ICC_OPERATOR_ISO_COUNTRY_GSM:Ljava/lang/String; = "gsm.gsm.sim.oprt.iso-country"

.field public static final PROPERTY_ICC_OPERATOR_ISO_COUNTRY_SUB_PHONE:Ljava/lang/String; = "gsm.sub.icc.oprt.iso-country"

.field public static final PROPERTY_ICC_OPERATOR_NUMERIC:Ljava/lang/String; = "gsm.sim.operator.numeric"

.field public static final PROPERTY_ICC_OPERATOR_NUMERIC_CDMA:Ljava/lang/String; = "gsm.cdma.uim.operator.numeric"

.field public static final PROPERTY_ICC_OPERATOR_NUMERIC_GSM:Ljava/lang/String; = "gsm.gsm.sim.operator.numeric"

.field public static final PROPERTY_ICC_OPERATOR_NUMERIC_SUB_PHONE:Ljava/lang/String; = "gsm.sub.icc.operator.numeric"

.field public static final PROPERTY_ICC_SIM_STATE:Ljava/lang/String; = "gsm.icc.sim.state"

.field public static final PROPERTY_ICC_SUB_STATE:Ljava/lang/String; = "gsm.icc.sub.state"

.field public static final PROPERTY_ICC_UIM_STATE:Ljava/lang/String; = "gsm.icc.uim.state"

.field public static final PROPERTY_IDP_STRING:Ljava/lang/String; = "ro.cdma.idpstring"

.field public static final PROPERTY_INECM_MODE:Ljava/lang/String; = "ril.cdma.inecmmode"

.field public static final PROPERTY_LOCKSCREEN_MODE_STATUS:Ljava/lang/String; = "gsm.lockscreen.mode.status"

.field public static final PROPERTY_LTE_ON_CDMA_DEVICE:Ljava/lang/String; = "telephony.lteOnCdmaDevice"

.field public static final PROPERTY_LTE_ON_CDMA_PRODUCT_TYPE:Ljava/lang/String; = "telephony.lteOnCdmaProductType"

.field public static final PROPERTY_MAIN_PHONE_TYPE:Ljava/lang/String; = "gsm.main_phone_type"

.field public static final PROPERTY_MAX_ADN_ALPHA_TAG_LENGTH:Ljava/lang/String; = "gsm.usim.alpha-tag.length"

.field public static final PROPERTY_MAX_ADN_ALPHA_TAG_LENGTH_CDMA:Ljava/lang/String; = "cdma.sim.alpha-tag.length"

.field public static final PROPERTY_MAX_ADN_ALPHA_TAG_LENGTH_GSM:Ljava/lang/String; = "gsm.sim.alpha-tag.length"

.field public static final PROPERTY_MAX_ADN_ALPHA_TAG_LENGTH_SUB_PHONE:Ljava/lang/String; = "gsm.sub.icc.alpha-tag.length"

.field public static final PROPERTY_MAX_ADN_NUMBER_LENGTH:Ljava/lang/String; = "gsm.usim.number.length"

.field public static final PROPERTY_MAX_ADN_NUMBER_LENGTH_CDMA:Ljava/lang/String; = "cdma.sim.number.length"

.field public static final PROPERTY_MAX_ADN_NUMBER_LENGTH_GSM:Ljava/lang/String; = "gsm.sim.number.length"

.field public static final PROPERTY_MAX_ADN_NUMBER_LENGTH_SUB_PHONE:Ljava/lang/String; = "gsm.sub.icc.number.length"

.field public static final PROPERTY_OPERATOR_ALPHA:Ljava/lang/String; = "gsm.operator.alpha"

.field public static final PROPERTY_OPERATOR_ALPHA_CDMA:Ljava/lang/String; = "gsm.cdma.operator.alpha"

.field public static final PROPERTY_OPERATOR_ALPHA_GSM:Ljava/lang/String; = "gsm.gsm.operator.alpha"

.field public static final PROPERTY_OPERATOR_ALPHA_SUB_PHONE:Ljava/lang/String; = "gsm.sub.operator.alpha"

.field public static final PROPERTY_OPERATOR_ISMANUAL:Ljava/lang/String; = "operator.ismanual"

.field public static final PROPERTY_OPERATOR_ISO_COUNTRY:Ljava/lang/String; = "gsm.operator.iso-country"

.field public static final PROPERTY_OPERATOR_ISO_COUNTRY_CDMA:Ljava/lang/String; = "gsm.cdma.operator.iso-country"

.field public static final PROPERTY_OPERATOR_ISO_COUNTRY_GSM:Ljava/lang/String; = "gsm.gsm.operator.iso-country"

.field public static final PROPERTY_OPERATOR_ISO_COUNTRY_SUB_PHONE:Ljava/lang/String; = "gsm.sub.operator.iso-country"

.field public static final PROPERTY_OPERATOR_ISROAMING:Ljava/lang/String; = "gsm.operator.isroaming"

.field public static final PROPERTY_OPERATOR_ISROAMING_CDMA:Ljava/lang/String; = "gsm.cdma.operator.isroaming"

.field public static final PROPERTY_OPERATOR_ISROAMING_GSM:Ljava/lang/String; = "gsm.gsm.operator.isroaming"

.field public static final PROPERTY_OPERATOR_ISROAMING_SUB_PHONE:Ljava/lang/String; = "gsm.sub.operator.isroaming"

.field public static final PROPERTY_OPERATOR_NUMERIC:Ljava/lang/String; = "gsm.operator.numeric"

.field public static final PROPERTY_OPERATOR_NUMERIC_CDMA:Ljava/lang/String; = "gsm.cdma.operator.numeric"

.field public static final PROPERTY_OPERATOR_NUMERIC_GSM:Ljava/lang/String; = "gsm.gsm.operator.numeric"

.field public static final PROPERTY_OPERATOR_NUMERIC_SUB_PHONE:Ljava/lang/String; = "gsm.sub.operator.numeric"

.field public static final PROPERTY_OTASP_NUM_SCHEMA:Ljava/lang/String; = "ro.cdma.otaspnumschema"

.field public static final PROPERTY_RESET_ON_RADIO_TECH_CHANGE:Ljava/lang/String; = "persist.radio.reset_on_switch"

.field public static final PROPERTY_RIL_IMPL:Ljava/lang/String; = "gsm.version.ril-impl"

.field public static final PROPERTY_RIL_IMPL_CDMA:Ljava/lang/String; = "gsm.cdma.version.ril-impl"

.field public static final PROPERTY_RIL_IMPL_GSM:Ljava/lang/String; = "gsm.gsm.version.ril-impl"

.field public static final PROPERTY_RIL_IMPL_SUB_PHONE:Ljava/lang/String; = "gsm.sub.version.ril-impl"

.field public static final PROPERTY_RIL_SENDS_MULTIPLE_CALL_RING:Ljava/lang/String; = "ro.telephony.call_ring.multiple"

.field public static final PROPERTY_RUIM_CHANGE:Ljava/lang/String; = "ruim.sim.change"

.field public static final PROPERTY_SIM_ADN_RECORDS_CAPACITY:Ljava/lang/String; = "gsm.adn.records.capacity"

.field public static final PROPERTY_SIM_ADN_RECORDS_CAPACITY_CDMA:Ljava/lang/String; = "cdma.sim.adn.records.capacity"

.field public static final PROPERTY_SIM_ADN_RECORDS_CAPACITY_GSM:Ljava/lang/String; = "gsm.sim.adn.records.capacity"

.field public static final PROPERTY_SIM_ADN_RECORDS_CAPACITY_SUB_PHONE:Ljava/lang/String; = "gsm.sub.adn.records.capacity"

.field public static final PROPERTY_SIM_CHANGE:Ljava/lang/String; = "gsm.sim.change"

.field public static final PROPERTY_SIM_HOTSWAP_PROCEDURE:Ljava/lang/String; = "gsm.sim.hotswap.procedure"

.field public static final PROPERTY_SIM_NUMERIC_TYPES:Ljava/lang/String; = "gsm.sim.numeric.types"

.field public static final PROPERTY_SIM_STATE:Ljava/lang/String; = "gsm.sim.state"

.field public static final PROPERTY_SIM_TYPES:Ljava/lang/String; = "gsm.sim.types"

.field public static final PROPERTY_SMS_RECEIVE:Ljava/lang/String; = "telephony.sms.receive"

.field public static final PROPERTY_SMS_SEND:Ljava/lang/String; = "telephony.sms.send"

.field public static final PROPERTY_SUB_PHONE_TYPE:Ljava/lang/String; = "gsm.sub_phone_type"

.field public static final PROPERTY_SUPER_POWER_SAVING:Ljava/lang/String; = "gsm.pdp.power.saving"

.field public static final PROPERTY_TEST_CSIM:Ljava/lang/String; = "persist.radio.test-csim"

.field public static final PROPERTY_UIM_ID:Ljava/lang/String; = "gsm.cdma.uim.id"

.field public static final PROPERTY_UNBLOCK_PIN2_FROM:Ljava/lang/String; = "gsm.unblock.pin2.from"

.field public static final PROPERTY_USIM_MAX_ANR_ENTRIES_PER_PBK:Ljava/lang/String; = "gsm.usim.anr.max-no"

.field public static final PROPERTY_USIM_MAX_ANR_ENTRIES_PER_PBK_CDMA:Ljava/lang/String; = "cdma.sim.anr.max-no"

.field public static final PROPERTY_USIM_MAX_ANR_ENTRIES_PER_PBK_GSM:Ljava/lang/String; = "gsm.sim.anr.max-no"

.field public static final PROPERTY_USIM_MAX_ANR_ENTRIES_PER_PBK_SUB_PHONE:Ljava/lang/String; = "gsm.sub.icc.anr.max-no"

.field public static final PROPERTY_USIM_MAX_EMAIL_ENTRIES_LENGTH:Ljava/lang/String; = "gsm.usim.email.length"

.field public static final PROPERTY_USIM_MAX_EMAIL_ENTRIES_LENGTH_CDMA:Ljava/lang/String; = "cdma.sim.email.length"

.field public static final PROPERTY_USIM_MAX_EMAIL_ENTRIES_LENGTH_GSM:Ljava/lang/String; = "gsm.sim.email.length"

.field public static final PROPERTY_USIM_MAX_EMAIL_ENTRIES_LENGTH_SUB_PHONE:Ljava/lang/String; = "gsm.sub.icc.email.length"

.field public static final PROPERTY_USIM_MAX_EMAIL_ENTRIES_PER_PBK:Ljava/lang/String; = "gsm.usim.email.max-no"

.field public static final PROPERTY_USIM_MAX_EMAIL_ENTRIES_PER_PBK_CDMA:Ljava/lang/String; = "cdma.sim.email.max-no"

.field public static final PROPERTY_USIM_MAX_EMAIL_ENTRIES_PER_PBK_GSM:Ljava/lang/String; = "gsm.sim.email.max-no"

.field public static final PROPERTY_USIM_MAX_EMAIL_ENTRIES_PER_PBK_SUB_PHONE:Ljava/lang/String; = "gsm.sub.icc.email.max-no"

.field public static final PROPERTY_VZW_MO_SMS_FORMAT:Ljava/lang/String; = "gsm.vzw.sms.format"

.field public static final PROPERTY_VZW_MO_SMS_FORMAT_3GPP:Ljava/lang/String; = "3gpp"

.field public static final PROPERTY_VZW_MO_SMS_FORMAT_3GPP2:Ljava/lang/String; = "3gpp2"

.field public static final PROPERTY_VZW_SMS_WRITE_UICC:Ljava/lang/String; = "gsm.vzw.sms.writeuicc"

.field public static final PROPERTY_WAKE_LOCK_TIMEOUT:Ljava/lang/String; = "ro.ril.wake_lock_timeout"
