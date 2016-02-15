.class Lorg/flerovium/settings/deviceinfo/UsageBarPreference$1$1;
.super Ljava/lang/Object;
.source "UsageBarPreference.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/flerovium/settings/deviceinfo/UsageBarPreference$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/flerovium/settings/deviceinfo/UsageBarPreference$1;


# direct methods
.method constructor <init>(Lorg/flerovium/settings/deviceinfo/UsageBarPreference$1;)V
    .locals 0

    .prologue
    .line 582
    iput-object p1, p0, Lorg/flerovium/settings/deviceinfo/UsageBarPreference$1$1;->this$1:Lorg/flerovium/settings/deviceinfo/UsageBarPreference$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 585
    iget-object v0, p0, Lorg/flerovium/settings/deviceinfo/UsageBarPreference$1$1;->this$1:Lorg/flerovium/settings/deviceinfo/UsageBarPreference$1;

    iget-object v0, v0, Lorg/flerovium/settings/deviceinfo/UsageBarPreference$1;->this$0:Lorg/flerovium/settings/deviceinfo/UsageBarPreference;

    # getter for: Lorg/flerovium/settings/deviceinfo/UsageBarPreference;->mOnRequestMediaRescanListener:Lorg/flerovium/settings/deviceinfo/UsageBarPreference$OnRequestMediaRescanListener;
    invoke-static {v0}, Lorg/flerovium/settings/deviceinfo/UsageBarPreference;->access$1700(Lorg/flerovium/settings/deviceinfo/UsageBarPreference;)Lorg/flerovium/settings/deviceinfo/UsageBarPreference$OnRequestMediaRescanListener;

    move-result-object v0

    invoke-interface {v0}, Lorg/flerovium/settings/deviceinfo/UsageBarPreference$OnRequestMediaRescanListener;->onRequestMediaRescan()V

    .line 586
    return-void
.end method
