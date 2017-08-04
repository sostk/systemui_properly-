.class public Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;
.super Ljava/lang/Object;
.source "AccessibilityContentDescriptions.java"


# static fields
.field static final DATA_CONNECTION_STRENGTH:[I

.field static final PHONE_SIGNAL_STRENGTH:[I

.field static final WIFI_CONNECTION_STRENGTH:[I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 13
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    .line 25
    const v0, 0x7f0901a1

    .line 26
    const v1, 0x7f0901a2

    .line 27
    const v2, 0x7f0901a3

    .line 28
    const v3, 0x7f0901a4

    .line 29
    const v4, 0x7f0901a5

    .line 24
    filled-new-array {v0, v1, v2, v3, v4}, [I

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->DATA_CONNECTION_STRENGTH:[I

    .line 33
    const v0, 0x7f0901a7

    .line 34
    const v1, 0x7f0901a8

    .line 35
    const v2, 0x7f0901a9

    .line 36
    const v3, 0x7f0901aa

    .line 37
    const v4, 0x7f0901ab

    .line 32
    filled-new-array {v0, v1, v2, v3, v4}, [I

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->WIFI_CONNECTION_STRENGTH:[I

    .line 10
    return-void

    .line 13
    nop

    :array_0
    .array-data 4
        0x7f09019b
        0x7f09019c
        0x7f09019d
        0x7f09019e
        0x7f09019f
        0x7f0901a0
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
