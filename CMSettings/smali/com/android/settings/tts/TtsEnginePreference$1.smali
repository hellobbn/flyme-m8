.class Lorg/flerovium/settings/tts/TtsEnginePreference$1;
.super Ljava/lang/Object;
.source "TtsEnginePreference.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/flerovium/settings/tts/TtsEnginePreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/flerovium/settings/tts/TtsEnginePreference;


# direct methods
.method constructor <init>(Lorg/flerovium/settings/tts/TtsEnginePreference;)V
    .locals 0

    .prologue
    .line 90
    iput-object p1, p0, Lorg/flerovium/settings/tts/TtsEnginePreference$1;->this$0:Lorg/flerovium/settings/tts/TtsEnginePreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 93
    iget-object v0, p0, Lorg/flerovium/settings/tts/TtsEnginePreference$1;->this$0:Lorg/flerovium/settings/tts/TtsEnginePreference;

    # invokes: Lorg/flerovium/settings/tts/TtsEnginePreference;->onRadioButtonClicked(Landroid/widget/CompoundButton;Z)V
    invoke-static {v0, p1, p2}, Lorg/flerovium/settings/tts/TtsEnginePreference;->access$000(Lorg/flerovium/settings/tts/TtsEnginePreference;Landroid/widget/CompoundButton;Z)V

    .line 94
    return-void
.end method