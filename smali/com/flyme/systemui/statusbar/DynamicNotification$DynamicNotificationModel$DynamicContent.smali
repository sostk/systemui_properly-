.class public Lcom/flyme/systemui/statusbar/DynamicNotification$DynamicNotificationModel$DynamicContent;
.super Ljava/lang/Object;
.source "DynamicNotification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/systemui/statusbar/DynamicNotification$DynamicNotificationModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DynamicContent"
.end annotation


# instance fields
.field private activeBundle:Landroid/os/Bundle;

.field private activeView:Lcom/meizu/flyme/activeview/views/ActiveView;

.field private anim:[I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lcom/flyme/systemui/statusbar/DynamicNotification$DynamicNotificationModel$DynamicContent;)Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/flyme/systemui/statusbar/DynamicNotification$DynamicNotificationModel$DynamicContent;->activeBundle:Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic -set0(Lcom/flyme/systemui/statusbar/DynamicNotification$DynamicNotificationModel$DynamicContent;Lcom/meizu/flyme/activeview/views/ActiveView;)Lcom/meizu/flyme/activeview/views/ActiveView;
    .locals 0

    iput-object p1, p0, Lcom/flyme/systemui/statusbar/DynamicNotification$DynamicNotificationModel$DynamicContent;->activeView:Lcom/meizu/flyme/activeview/views/ActiveView;

    return-object p1
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 558
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getActiveBundle()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 573
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/DynamicNotification$DynamicNotificationModel$DynamicContent;->activeBundle:Landroid/os/Bundle;

    return-object v0
.end method

.method public getActiveView()Lcom/meizu/flyme/activeview/views/ActiveView;
    .locals 1

    .prologue
    .line 581
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/DynamicNotification$DynamicNotificationModel$DynamicContent;->activeView:Lcom/meizu/flyme/activeview/views/ActiveView;

    return-object v0
.end method

.method public getAnim()[I
    .locals 1

    .prologue
    .line 565
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/DynamicNotification$DynamicNotificationModel$DynamicContent;->anim:[I

    return-object v0
.end method

.method public setActiveBundle(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "active"    # Landroid/os/Bundle;

    .prologue
    .line 577
    iput-object p1, p0, Lcom/flyme/systemui/statusbar/DynamicNotification$DynamicNotificationModel$DynamicContent;->activeBundle:Landroid/os/Bundle;

    .line 576
    return-void
.end method

.method public setActiveView(Lcom/meizu/flyme/activeview/views/ActiveView;)V
    .locals 0
    .param p1, "active"    # Lcom/meizu/flyme/activeview/views/ActiveView;

    .prologue
    .line 585
    iput-object p1, p0, Lcom/flyme/systemui/statusbar/DynamicNotification$DynamicNotificationModel$DynamicContent;->activeView:Lcom/meizu/flyme/activeview/views/ActiveView;

    .line 584
    return-void
.end method
