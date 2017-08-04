.class Lcom/flyme/systemui/statusbar/policy/SmartTouchControllerImpl$2;
.super Lcom/flyme/systemui/smarttouch/SmartTouchComponent;
.source "SmartTouchControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/systemui/statusbar/policy/SmartTouchControllerImpl;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/systemui/statusbar/policy/SmartTouchControllerImpl;


# direct methods
.method constructor <init>(Lcom/flyme/systemui/statusbar/policy/SmartTouchControllerImpl;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/flyme/systemui/statusbar/policy/SmartTouchControllerImpl;
    .param p2, "$anonymous0"    # Landroid/content/Context;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/flyme/systemui/statusbar/policy/SmartTouchControllerImpl$2;->this$0:Lcom/flyme/systemui/statusbar/policy/SmartTouchControllerImpl;

    invoke-direct {p0, p2}, Lcom/flyme/systemui/smarttouch/SmartTouchComponent;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onUpdateViews(Z)V
    .locals 1
    .param p1, "on"    # Z

    .prologue
    .line 51
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/SmartTouchControllerImpl$2;->this$0:Lcom/flyme/systemui/statusbar/policy/SmartTouchControllerImpl;

    invoke-static {v0, p1}, Lcom/flyme/systemui/statusbar/policy/SmartTouchControllerImpl;->-set0(Lcom/flyme/systemui/statusbar/policy/SmartTouchControllerImpl;Z)Z

    .line 52
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/SmartTouchControllerImpl$2;->this$0:Lcom/flyme/systemui/statusbar/policy/SmartTouchControllerImpl;

    invoke-static {v0}, Lcom/flyme/systemui/statusbar/policy/SmartTouchControllerImpl;->-wrap0(Lcom/flyme/systemui/statusbar/policy/SmartTouchControllerImpl;)V

    .line 50
    return-void
.end method
