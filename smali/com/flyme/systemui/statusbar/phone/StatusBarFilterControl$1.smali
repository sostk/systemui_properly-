.class Lcom/flyme/systemui/statusbar/phone/StatusBarFilterControl$1;
.super Ljava/lang/Object;
.source "StatusBarFilterControl.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/systemui/statusbar/phone/StatusBarFilterControl;->setFilterColor(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/systemui/statusbar/phone/StatusBarFilterControl;


# direct methods
.method constructor <init>(Lcom/flyme/systemui/statusbar/phone/StatusBarFilterControl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/flyme/systemui/statusbar/phone/StatusBarFilterControl;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/flyme/systemui/statusbar/phone/StatusBarFilterControl$1;->this$0:Lcom/flyme/systemui/statusbar/phone/StatusBarFilterControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "valueAnimator"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 85
    invoke-static {p1}, Lcom/flyme/systemui/statusbar/utils/ColorAnimUtils;->getColor(Landroid/animation/ValueAnimator;)I

    move-result v0

    .line 86
    .local v0, "color":I
    iget-object v1, p0, Lcom/flyme/systemui/statusbar/phone/StatusBarFilterControl$1;->this$0:Lcom/flyme/systemui/statusbar/phone/StatusBarFilterControl;

    invoke-static {v1, v0}, Lcom/flyme/systemui/statusbar/phone/StatusBarFilterControl;->-wrap0(Lcom/flyme/systemui/statusbar/phone/StatusBarFilterControl;I)V

    .line 84
    return-void
.end method
