.class Lcom/android/systemui/statusbar/phone/NotificationPanelView$14;
.super Ljava/lang/Object;
.source "NotificationPanelView.java"

# interfaces
.implements Lcom/android/systemui/qs/QSPanel$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/NotificationPanelView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    .prologue
    .line 409
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$14;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScanStateChanged(Z)V
    .locals 0
    .param p1, "state"    # Z

    .prologue
    .line 418
    return-void
.end method

.method public onShowingDetail(Lcom/android/systemui/qs/QSTile$DetailAdapter;)V
    .locals 1
    .param p1, "detail"    # Lcom/android/systemui/qs/QSTile$DetailAdapter;

    .prologue
    .line 412
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$14;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->-wrap2(Lcom/android/systemui/statusbar/phone/NotificationPanelView;Lcom/android/systemui/qs/QSTile$DetailAdapter;)V

    .line 411
    return-void
.end method

.method public onToggleStateChanged(Z)V
    .locals 0
    .param p1, "state"    # Z

    .prologue
    .line 415
    return-void
.end method
