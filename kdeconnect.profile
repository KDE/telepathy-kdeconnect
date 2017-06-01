<service xmlns="http://telepathy.freedesktop.org/wiki/service-profile-v1"
         id="kdeconnect"
         type="IM"
         manager="kdeconnect"
         protocol="kdeconnect">
  <name>KDE Connect</name>

  <parameters>
    <parameter name="server"  type="s" mandatory="1">talk.google.com</parameter>
    <parameter name="port"    type="u" mandatory="1">5223</parameter>
  </parameters>

  <presences allow-others="0">
    <presence id="available" label="Online"  icon="user-online"/>
    <presence id="offline" label="Phone Disconnected"/>
  </presences>

  <unsupported-channel-classes>
    <!-- this service doesn't support text roomlists -->
    <channel-class>
      <property name="org.freedesktop.Telepathy.Channel.TargetHandleType"
                type="u">3</property>
      <property name="org.freedesktop.Telepathy.Channel.ChannelType"
                type="s">org.freedesktop.Telepathy.Channel.Type.Text</property>
    </channel-class>
  </unsupported-channel-classes>
</service>
