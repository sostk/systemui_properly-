.class public Lcom/meizu/keyguard/KeyguardThemeUtils$Security;
.super Ljava/lang/Object;
.source "KeyguardThemeUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/keyguard/KeyguardThemeUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Security"
.end annotation


# instance fields
.field public mDateColor:I

.field public mDateHorizontal:Z

.field public mDateLeft:I

.field public mDateSize:F

.field public mDateTop:I

.field public mTimeHorizontal:Z

.field public mTimeLeft:I

.field public mTimeTop:I

.field final synthetic this$0:Lcom/meizu/keyguard/KeyguardThemeUtils;


# direct methods
.method public constructor <init>(Lcom/meizu/keyguard/KeyguardThemeUtils;IIZIIZFI)V
    .locals 0
    .param p1, "this$0"    # Lcom/meizu/keyguard/KeyguardThemeUtils;
    .param p2, "timeLeft"    # I
    .param p3, "timeTop"    # I
    .param p4, "timeHorizontal"    # Z
    .param p5, "dateLeft"    # I
    .param p6, "dateTop"    # I
    .param p7, "dateHorizontal"    # Z
    .param p8, "dateSize"    # F
    .param p9, "dateColor"    # I

    .prologue
    .line 169
    iput-object p1, p0, Lcom/meizu/keyguard/KeyguardThemeUtils$Security;->this$0:Lcom/meizu/keyguard/KeyguardThemeUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 170
    iput p2, p0, Lcom/meizu/keyguard/KeyguardThemeUtils$Security;->mTimeLeft:I

    .line 171
    iput p3, p0, Lcom/meizu/keyguard/KeyguardThemeUtils$Security;->mTimeTop:I

    .line 172
    iput-boolean p4, p0, Lcom/meizu/keyguard/KeyguardThemeUtils$Security;->mTimeHorizontal:Z

    .line 173
    iput p5, p0, Lcom/meizu/keyguard/KeyguardThemeUtils$Security;->mDateLeft:I

    .line 174
    iput p6, p0, Lcom/meizu/keyguard/KeyguardThemeUtils$Security;->mDateTop:I

    .line 175
    iput-boolean p7, p0, Lcom/meizu/keyguard/KeyguardThemeUtils$Security;->mDateHorizontal:Z

    .line 176
    iput p8, p0, Lcom/meizu/keyguard/KeyguardThemeUtils$Security;->mDateSize:F

    .line 177
    iput p9, p0, Lcom/meizu/keyguard/KeyguardThemeUtils$Security;->mDateColor:I

    .line 169
    return-void
.end method
