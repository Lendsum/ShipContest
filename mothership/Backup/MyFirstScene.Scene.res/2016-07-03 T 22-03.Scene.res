<root dataType="Struct" type="Duality.Resources.Scene" id="129723834">
  <assetInfo />
  <globalGravity dataType="Struct" type="Duality.Vector2">
    <X dataType="Float">0</X>
    <Y dataType="Float">0</Y>
  </globalGravity>
  <serializeObj dataType="Array" type="Duality.GameObject[]" id="427169525">
    <item dataType="Struct" type="Duality.GameObject" id="192365404">
      <active dataType="Bool">true</active>
      <children />
      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="410081842">
        <_items dataType="Array" type="Duality.Component[]" id="541555152">
          <item dataType="Struct" type="Duality.Components.Transform" id="2552680336">
            <active dataType="Bool">true</active>
            <angle dataType="Float">0</angle>
            <angleAbs dataType="Float">0</angleAbs>
            <angleVel dataType="Float">0</angleVel>
            <angleVelAbs dataType="Float">0</angleVelAbs>
            <deriveAngle dataType="Bool">true</deriveAngle>
            <gameobj dataType="ObjectRef">192365404</gameobj>
            <ignoreParent dataType="Bool">false</ignoreParent>
            <parentTransform />
            <pos dataType="Struct" type="Duality.Vector3">
              <X dataType="Float">-57.6982422</X>
              <Y dataType="Float">38.465332</Y>
              <Z dataType="Float">1</Z>
            </pos>
            <posAbs dataType="Struct" type="Duality.Vector3">
              <X dataType="Float">-57.6982422</X>
              <Y dataType="Float">38.465332</Y>
              <Z dataType="Float">1</Z>
            </posAbs>
            <scale dataType="Float">2</scale>
            <scaleAbs dataType="Float">2</scaleAbs>
            <vel dataType="Struct" type="Duality.Vector3">
              <X dataType="Float">0</X>
              <Y dataType="Float">0</Y>
              <Z dataType="Float">0</Z>
            </vel>
            <velAbs dataType="Struct" type="Duality.Vector3">
              <X dataType="Float">0</X>
              <Y dataType="Float">0</Y>
              <Z dataType="Float">0</Z>
            </velAbs>
          </item>
          <item dataType="Struct" type="Duality.Components.Renderers.SpriteRenderer" id="1834531972">
            <active dataType="Bool">true</active>
            <colorTint dataType="Struct" type="Duality.Drawing.ColorRgba">
              <A dataType="Byte">255</A>
              <B dataType="Byte">255</B>
              <G dataType="Byte">255</G>
              <R dataType="Byte">255</R>
            </colorTint>
            <customMat />
            <flipMode dataType="Enum" type="Duality.Components.Renderers.SpriteRenderer+FlipMode" name="None" value="0" />
            <gameobj dataType="ObjectRef">192365404</gameobj>
            <offset dataType="Int">0</offset>
            <pixelGrid dataType="Bool">false</pixelGrid>
            <rect dataType="Struct" type="Duality.Rect">
              <H dataType="Float">1024</H>
              <W dataType="Float">1024</W>
              <X dataType="Float">-512</X>
              <Y dataType="Float">-512</Y>
            </rect>
            <rectMode dataType="Enum" type="Duality.Components.Renderers.SpriteRenderer+UVMode" name="Stretch" value="0" />
            <sharedMat dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]">
              <contentPath dataType="String">Data\fondo.Material.res</contentPath>
            </sharedMat>
            <visibilityGroup dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="Group0" value="1" />
          </item>
          <item dataType="Struct" type="Duality.Components.Physics.RigidBody" id="3255141928">
            <active dataType="Bool">true</active>
            <angularDamp dataType="Float">0.3</angularDamp>
            <angularVel dataType="Float">0</angularVel>
            <bodyType dataType="Enum" type="Duality.Components.Physics.BodyType" name="Dynamic" value="1" />
            <colCat dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="Cat1" value="1" />
            <colFilter />
            <colWith dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="All" value="2147483647" />
            <continous dataType="Bool">false</continous>
            <explicitInertia dataType="Float">0</explicitInertia>
            <explicitMass dataType="Float">0</explicitMass>
            <fixedAngle dataType="Bool">false</fixedAngle>
            <gameobj dataType="ObjectRef">192365404</gameobj>
            <ignoreGravity dataType="Bool">false</ignoreGravity>
            <joints />
            <linearDamp dataType="Float">0.3</linearDamp>
            <linearVel dataType="Struct" type="Duality.Vector2">
              <X dataType="Float">0</X>
              <Y dataType="Float">0</Y>
            </linearVel>
            <revolutions dataType="Float">0</revolutions>
            <shapes dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Components.Physics.ShapeInfo]]" id="3239274264">
              <_items dataType="Array" type="Duality.Components.Physics.ShapeInfo[]" id="1241377324">
                <item dataType="Struct" type="Duality.Components.Physics.PolyShapeInfo" id="1299772644">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0.3</friction>
                  <parent dataType="ObjectRef">3255141928</parent>
                  <restitution dataType="Float">0.3</restitution>
                  <sensor dataType="Bool">true</sensor>
                  <vertices dataType="Array" type="Duality.Vector2[]" id="3840726980">
                    <item dataType="Struct" type="Duality.Vector2">
                      <X dataType="Float">-509.0056</X>
                      <Y dataType="Float">-509.095764</Y>
                    </item>
                    <item dataType="Struct" type="Duality.Vector2">
                      <X dataType="Float">-509.0056</X>
                      <Y dataType="Float">511.306274</Y>
                    </item>
                    <item dataType="Struct" type="Duality.Vector2">
                      <X dataType="Float">-574.074768</X>
                      <Y dataType="Float">534.9678</Y>
                    </item>
                    <item dataType="Struct" type="Duality.Vector2">
                      <X dataType="Float">-577.0324</X>
                      <Y dataType="Float">-541.6303</Y>
                    </item>
                  </vertices>
                </item>
                <item dataType="Struct" type="Duality.Components.Physics.PolyShapeInfo" id="2476596758">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0.3</friction>
                  <parent dataType="ObjectRef">3255141928</parent>
                  <restitution dataType="Float">0.3</restitution>
                  <sensor dataType="Bool">true</sensor>
                  <vertices dataType="Array" type="Duality.Vector2[]" id="825508526">
                    <item dataType="Struct" type="Duality.Vector2">
                      <X dataType="Float">-511.963257</X>
                      <Y dataType="Float">502.433319</Y>
                    </item>
                    <item dataType="Struct" type="Duality.Vector2">
                      <X dataType="Float">511.3964</X>
                      <Y dataType="Float">505.391022</Y>
                    </item>
                    <item dataType="Struct" type="Duality.Vector2">
                      <X dataType="Float">543.931</X>
                      <Y dataType="Float">555.6717</Y>
                    </item>
                    <item dataType="Struct" type="Duality.Vector2">
                      <X dataType="Float">-577.0324</X>
                      <Y dataType="Float">543.840942</Y>
                    </item>
                  </vertices>
                </item>
                <item dataType="Struct" type="Duality.Components.Physics.PolyShapeInfo" id="1406794464">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0.3</friction>
                  <parent dataType="ObjectRef">3255141928</parent>
                  <restitution dataType="Float">0.3</restitution>
                  <sensor dataType="Bool">true</sensor>
                  <vertices dataType="Array" type="Duality.Vector2[]" id="3919472904">
                    <item dataType="Struct" type="Duality.Vector2">
                      <X dataType="Float">511.3964</X>
                      <Y dataType="Float">-509.095764</Y>
                    </item>
                    <item dataType="Struct" type="Duality.Vector2">
                      <X dataType="Float">514.3541</X>
                      <Y dataType="Float">508.348572</Y>
                    </item>
                    <item dataType="Struct" type="Duality.Vector2">
                      <X dataType="Float">552.8041</X>
                      <Y dataType="Float">561.5869</Y>
                    </item>
                    <item dataType="Struct" type="Duality.Vector2">
                      <X dataType="Float">543.931</X>
                      <Y dataType="Float">-535.714966</Y>
                    </item>
                  </vertices>
                </item>
                <item dataType="Struct" type="Duality.Components.Physics.PolyShapeInfo" id="672455266">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0.3</friction>
                  <parent dataType="ObjectRef">3255141928</parent>
                  <restitution dataType="Float">0.3</restitution>
                  <sensor dataType="Bool">true</sensor>
                  <vertices dataType="Array" type="Duality.Vector2[]" id="2529665138">
                    <item dataType="Struct" type="Duality.Vector2">
                      <X dataType="Float">-509.4508</X>
                      <Y dataType="Float">-514.1351</Y>
                    </item>
                    <item dataType="Struct" type="Duality.Vector2">
                      <X dataType="Float">513.2212</X>
                      <Y dataType="Float">-511.082336</Y>
                    </item>
                    <item dataType="Struct" type="Duality.Vector2">
                      <X dataType="Float">555.9598</X>
                      <Y dataType="Float">-553.820862</Y>
                    </item>
                    <item dataType="Struct" type="Duality.Vector2">
                      <X dataType="Float">-573.5586</X>
                      <Y dataType="Float">-544.6626</Y>
                    </item>
                  </vertices>
                </item>
              </_items>
              <_size dataType="Int">4</_size>
              <_version dataType="Int">6</_version>
            </shapes>
          </item>
          <item dataType="Struct" type="naves.SpaceBagController" id="1395198759">
            <_x003C_PlayerPrefab_x003E_k__BackingField dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Prefab]]">
              <contentPath dataType="String">Data\Player.Prefab.res</contentPath>
            </_x003C_PlayerPrefab_x003E_k__BackingField>
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">192365404</gameobj>
            <Players dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Int32],[naves.Player]]" id="2476053379" surrogate="true">
              <header />
              <body>
                <keys dataType="Array" type="System.Object[]" id="167137062">
                  <item dataType="Int">1</item>
                  <item dataType="Int">2</item>
                  <item dataType="Int">3</item>
                  <item dataType="Int">4</item>
                </keys>
                <values dataType="Array" type="System.Object[]" id="1273219770">
                  <item dataType="Struct" type="naves.Player" id="2360586190">
                    <active dataType="Bool">true</active>
                    <gameobj dataType="Struct" type="Duality.GameObject" id="3275994880">
                      <active dataType="Bool">true</active>
                      <children />
                      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="34658262">
                        <_items dataType="Array" type="Duality.Component[]" id="2770518304" length="8">
                          <item dataType="Struct" type="Duality.Components.Transform" id="1341342516">
                            <active dataType="Bool">true</active>
                            <gameobj dataType="ObjectRef">3275994880</gameobj>
                          </item>
                          <item dataType="Struct" type="Duality.Components.Renderers.SpriteRenderer" id="623194152">
                            <active dataType="Bool">true</active>
                            <gameobj dataType="ObjectRef">3275994880</gameobj>
                          </item>
                          <item dataType="Struct" type="Duality.Components.Physics.RigidBody" id="2043804108">
                            <active dataType="Bool">true</active>
                            <gameobj dataType="ObjectRef">3275994880</gameobj>
                          </item>
                          <item dataType="ObjectRef">2360586190</item>
                          <item dataType="Struct" type="Duality.Components.Renderers.TextRenderer" id="723656406">
                            <active dataType="Bool">true</active>
                            <gameobj dataType="ObjectRef">3275994880</gameobj>
                          </item>
                        </_items>
                        <_size dataType="Int">5</_size>
                        <_version dataType="Int">5</_version>
                      </compList>
                      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="2171339738" surrogate="true">
                        <header />
                        <body>
                          <keys dataType="Array" type="System.Object[]" id="2502759076">
                            <item dataType="Type" id="2719164612" value="Duality.Components.Transform" />
                            <item dataType="Type" id="4256918422" value="Duality.Components.Renderers.SpriteRenderer" />
                            <item dataType="Type" id="4161368448" value="Duality.Components.Physics.RigidBody" />
                            <item dataType="Type" id="431813154" value="naves.Player" />
                            <item dataType="Type" id="308430044" value="Duality.Components.Renderers.TextRenderer" />
                          </keys>
                          <values dataType="Array" type="System.Object[]" id="2758202134">
                            <item dataType="ObjectRef">1341342516</item>
                            <item dataType="ObjectRef">623194152</item>
                            <item dataType="ObjectRef">2043804108</item>
                            <item dataType="ObjectRef">2360586190</item>
                            <item dataType="ObjectRef">723656406</item>
                          </values>
                        </body>
                      </compMap>
                      <compTransform dataType="ObjectRef">1341342516</compTransform>
                      <identifier dataType="Struct" type="System.Guid" surrogate="true">
                        <header>
                          <data dataType="Array" type="System.Byte[]" id="2188608928">nvB4PjspZ0eyS9Qd4XXo+Q==</data>
                        </header>
                        <body />
                      </identifier>
                      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
                      <name dataType="String">ShipOne</name>
                      <parent />
                      <prefabLink dataType="Struct" type="Duality.Resources.PrefabLink" id="2627122422">
                        <changes />
                        <obj dataType="ObjectRef">3275994880</obj>
                        <prefab dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Prefab]]">
                          <contentPath dataType="String">Data\Player.Prefab.res</contentPath>
                        </prefab>
                      </prefabLink>
                    </gameobj>
                  </item>
                  <item dataType="Struct" type="naves.Player" id="1991697082">
                    <active dataType="Bool">true</active>
                    <gameobj dataType="Struct" type="Duality.GameObject" id="2907105772">
                      <active dataType="Bool">true</active>
                      <children />
                      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="3241957910">
                        <_items dataType="Array" type="Duality.Component[]" id="3838372128" length="8">
                          <item dataType="Struct" type="Duality.Components.Transform" id="972453408">
                            <active dataType="Bool">true</active>
                            <gameobj dataType="ObjectRef">2907105772</gameobj>
                          </item>
                          <item dataType="Struct" type="Duality.Components.Renderers.SpriteRenderer" id="254305044">
                            <active dataType="Bool">true</active>
                            <gameobj dataType="ObjectRef">2907105772</gameobj>
                          </item>
                          <item dataType="Struct" type="Duality.Components.Physics.RigidBody" id="1674915000">
                            <active dataType="Bool">true</active>
                            <gameobj dataType="ObjectRef">2907105772</gameobj>
                          </item>
                          <item dataType="ObjectRef">1991697082</item>
                          <item dataType="Struct" type="Duality.Components.Renderers.TextRenderer" id="354767298">
                            <active dataType="Bool">true</active>
                            <gameobj dataType="ObjectRef">2907105772</gameobj>
                          </item>
                        </_items>
                        <_size dataType="Int">5</_size>
                        <_version dataType="Int">5</_version>
                      </compList>
                      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="2494221274" surrogate="true">
                        <header />
                        <body>
                          <keys dataType="Array" type="System.Object[]" id="2609255140">
                            <item dataType="ObjectRef">2719164612</item>
                            <item dataType="ObjectRef">4256918422</item>
                            <item dataType="ObjectRef">4161368448</item>
                            <item dataType="ObjectRef">431813154</item>
                            <item dataType="ObjectRef">308430044</item>
                          </keys>
                          <values dataType="Array" type="System.Object[]" id="1234529814">
                            <item dataType="ObjectRef">972453408</item>
                            <item dataType="ObjectRef">254305044</item>
                            <item dataType="ObjectRef">1674915000</item>
                            <item dataType="ObjectRef">1991697082</item>
                            <item dataType="ObjectRef">354767298</item>
                          </values>
                        </body>
                      </compMap>
                      <compTransform dataType="ObjectRef">972453408</compTransform>
                      <identifier dataType="Struct" type="System.Guid" surrogate="true">
                        <header>
                          <data dataType="Array" type="System.Byte[]" id="1122612448">VaxVyRPvX0WGdYsP/J3O5g==</data>
                        </header>
                        <body />
                      </identifier>
                      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
                      <name dataType="String">ShipOne</name>
                      <parent />
                      <prefabLink dataType="Struct" type="Duality.Resources.PrefabLink" id="2040098230">
                        <changes />
                        <obj dataType="ObjectRef">2907105772</obj>
                        <prefab dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Prefab]]">
                          <contentPath dataType="String">Data\Player.Prefab.res</contentPath>
                        </prefab>
                      </prefabLink>
                    </gameobj>
                  </item>
                  <item dataType="Struct" type="naves.Player" id="611919742">
                    <active dataType="Bool">true</active>
                    <gameobj dataType="Struct" type="Duality.GameObject" id="1527328432">
                      <active dataType="Bool">true</active>
                      <children />
                      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="743494614">
                        <_items dataType="Array" type="Duality.Component[]" id="447445280" length="8">
                          <item dataType="Struct" type="Duality.Components.Transform" id="3887643364">
                            <active dataType="Bool">true</active>
                            <gameobj dataType="ObjectRef">1527328432</gameobj>
                          </item>
                          <item dataType="Struct" type="Duality.Components.Renderers.SpriteRenderer" id="3169495000">
                            <active dataType="Bool">true</active>
                            <gameobj dataType="ObjectRef">1527328432</gameobj>
                          </item>
                          <item dataType="Struct" type="Duality.Components.Physics.RigidBody" id="295137660">
                            <active dataType="Bool">true</active>
                            <gameobj dataType="ObjectRef">1527328432</gameobj>
                          </item>
                          <item dataType="ObjectRef">611919742</item>
                          <item dataType="Struct" type="Duality.Components.Renderers.TextRenderer" id="3269957254">
                            <active dataType="Bool">true</active>
                            <gameobj dataType="ObjectRef">1527328432</gameobj>
                          </item>
                        </_items>
                        <_size dataType="Int">5</_size>
                        <_version dataType="Int">5</_version>
                      </compList>
                      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="650492890" surrogate="true">
                        <header />
                        <body>
                          <keys dataType="Array" type="System.Object[]" id="480456356">
                            <item dataType="ObjectRef">2719164612</item>
                            <item dataType="ObjectRef">4256918422</item>
                            <item dataType="ObjectRef">4161368448</item>
                            <item dataType="ObjectRef">431813154</item>
                            <item dataType="ObjectRef">308430044</item>
                          </keys>
                          <values dataType="Array" type="System.Object[]" id="654838550">
                            <item dataType="ObjectRef">3887643364</item>
                            <item dataType="ObjectRef">3169495000</item>
                            <item dataType="ObjectRef">295137660</item>
                            <item dataType="ObjectRef">611919742</item>
                            <item dataType="ObjectRef">3269957254</item>
                          </values>
                        </body>
                      </compMap>
                      <compTransform dataType="ObjectRef">3887643364</compTransform>
                      <identifier dataType="Struct" type="System.Guid" surrogate="true">
                        <header>
                          <data dataType="Array" type="System.Byte[]" id="3312947616">xGa2gb/YzkiswwI+aQzIug==</data>
                        </header>
                        <body />
                      </identifier>
                      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
                      <name dataType="String">ShipOne</name>
                      <parent />
                      <prefabLink dataType="Struct" type="Duality.Resources.PrefabLink" id="144417014">
                        <changes />
                        <obj dataType="ObjectRef">1527328432</obj>
                        <prefab dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Prefab]]">
                          <contentPath dataType="String">Data\Player.Prefab.res</contentPath>
                        </prefab>
                      </prefabLink>
                    </gameobj>
                  </item>
                  <item dataType="Struct" type="naves.Player" id="4290914032">
                    <active dataType="Bool">true</active>
                    <gameobj dataType="Struct" type="Duality.GameObject" id="911355426">
                      <active dataType="Bool">true</active>
                      <children />
                      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="3836523150">
                        <_items dataType="Array" type="Duality.Component[]" id="2297501904" length="8">
                          <item dataType="Struct" type="Duality.Components.Transform" id="3271670358">
                            <active dataType="Bool">true</active>
                            <gameobj dataType="ObjectRef">911355426</gameobj>
                          </item>
                          <item dataType="Struct" type="Duality.Components.Renderers.SpriteRenderer" id="2553521994">
                            <active dataType="Bool">true</active>
                            <gameobj dataType="ObjectRef">911355426</gameobj>
                          </item>
                          <item dataType="Struct" type="Duality.Components.Physics.RigidBody" id="3974131950">
                            <active dataType="Bool">true</active>
                            <gameobj dataType="ObjectRef">911355426</gameobj>
                          </item>
                          <item dataType="ObjectRef">4290914032</item>
                          <item dataType="Struct" type="Duality.Components.Renderers.TextRenderer" id="2653984248">
                            <active dataType="Bool">true</active>
                            <gameobj dataType="ObjectRef">911355426</gameobj>
                          </item>
                        </_items>
                        <_size dataType="Int">5</_size>
                        <_version dataType="Int">5</_version>
                      </compList>
                      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="619325514" surrogate="true">
                        <header />
                        <body>
                          <keys dataType="Array" type="System.Object[]" id="2893666892">
                            <item dataType="ObjectRef">2719164612</item>
                            <item dataType="ObjectRef">4256918422</item>
                            <item dataType="ObjectRef">4161368448</item>
                            <item dataType="ObjectRef">431813154</item>
                            <item dataType="ObjectRef">308430044</item>
                          </keys>
                          <values dataType="Array" type="System.Object[]" id="2071358966">
                            <item dataType="ObjectRef">3271670358</item>
                            <item dataType="ObjectRef">2553521994</item>
                            <item dataType="ObjectRef">3974131950</item>
                            <item dataType="ObjectRef">4290914032</item>
                            <item dataType="ObjectRef">2653984248</item>
                          </values>
                        </body>
                      </compMap>
                      <compTransform dataType="ObjectRef">3271670358</compTransform>
                      <identifier dataType="Struct" type="System.Guid" surrogate="true">
                        <header>
                          <data dataType="Array" type="System.Byte[]" id="2617984344">2WP46qrjok2llj+R4PijWQ==</data>
                        </header>
                        <body />
                      </identifier>
                      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
                      <name dataType="String">ShipOne</name>
                      <parent />
                      <prefabLink dataType="Struct" type="Duality.Resources.PrefabLink" id="2309501374">
                        <changes />
                        <obj dataType="ObjectRef">911355426</obj>
                        <prefab dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Prefab]]">
                          <contentPath dataType="String">Data\Player.Prefab.res</contentPath>
                        </prefab>
                      </prefabLink>
                    </gameobj>
                  </item>
                </values>
              </body>
            </Players>
          </item>
        </_items>
        <_size dataType="Int">4</_size>
        <_version dataType="Int">4</_version>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="3587796298" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Object[]" id="1511488808">
            <item dataType="ObjectRef">2719164612</item>
            <item dataType="ObjectRef">4256918422</item>
            <item dataType="ObjectRef">4161368448</item>
            <item dataType="Type" id="1193717676" value="naves.SpaceBagController" />
          </keys>
          <values dataType="Array" type="System.Object[]" id="73228446">
            <item dataType="ObjectRef">2552680336</item>
            <item dataType="ObjectRef">1834531972</item>
            <item dataType="ObjectRef">3255141928</item>
            <item dataType="ObjectRef">1395198759</item>
          </values>
        </body>
      </compMap>
      <compTransform dataType="ObjectRef">2552680336</compTransform>
      <identifier dataType="Struct" type="System.Guid" surrogate="true">
        <header>
          <data dataType="Array" type="System.Byte[]" id="3419015700">NQFEZjNUZkKfJTl0Uv3wDw==</data>
        </header>
        <body />
      </identifier>
      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
      <name dataType="String">SpaceBg</name>
      <parent />
      <prefabLink />
    </item>
    <item dataType="Struct" type="Duality.GameObject" id="3163566341">
      <active dataType="Bool">false</active>
      <children />
      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="2030965879">
        <_items dataType="Array" type="Duality.Component[]" id="26940814">
          <item dataType="Struct" type="Duality.Components.Transform" id="1228913977">
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">3163566341</gameobj>
          </item>
          <item dataType="Struct" type="Duality.Components.Renderers.SpriteRenderer" id="510765613">
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">3163566341</gameobj>
          </item>
          <item dataType="Struct" type="Duality.Components.Physics.RigidBody" id="1931375569">
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">3163566341</gameobj>
          </item>
          <item dataType="Struct" type="naves.BulletController" id="1655702322">
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">3163566341</gameobj>
          </item>
        </_items>
        <_size dataType="Int">4</_size>
        <_version dataType="Int">4</_version>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="3030165824" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Object[]" id="3549918653">
            <item dataType="ObjectRef">2719164612</item>
            <item dataType="ObjectRef">4256918422</item>
            <item dataType="ObjectRef">4161368448</item>
            <item dataType="Type" id="2388123686" value="naves.BulletController" />
          </keys>
          <values dataType="Array" type="System.Object[]" id="4233994936">
            <item dataType="ObjectRef">1228913977</item>
            <item dataType="ObjectRef">510765613</item>
            <item dataType="ObjectRef">1931375569</item>
            <item dataType="ObjectRef">1655702322</item>
          </values>
        </body>
      </compMap>
      <compTransform dataType="ObjectRef">1228913977</compTransform>
      <identifier dataType="Struct" type="System.Guid" surrogate="true">
        <header>
          <data dataType="Array" type="System.Byte[]" id="2505630103">xHfovXjz+ka3w/Jk6DmxOw==</data>
        </header>
        <body />
      </identifier>
      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
      <name dataType="String">bulletOne</name>
      <parent />
      <prefabLink dataType="Struct" type="Duality.Resources.PrefabLink" id="1067258069">
        <changes dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Resources.PrefabLink+VarMod]]" id="832204980">
          <_items dataType="Array" type="Duality.Resources.PrefabLink+VarMod[]" id="1722518948" length="4">
            <item dataType="Struct" type="Duality.Resources.PrefabLink+VarMod">
              <childIndex dataType="Struct" type="System.Collections.Generic.List`1[[System.Int32]]" id="2070205384">
                <_items dataType="Array" type="System.Int32[]" id="3567520364"></_items>
                <_size dataType="Int">0</_size>
                <_version dataType="Int">1</_version>
              </childIndex>
              <componentType dataType="ObjectRef">4161368448</componentType>
              <prop dataType="MemberInfo" id="6132446" value="P:Duality.Components.Physics.RigidBody:Shapes" />
              <val dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Components.Physics.ShapeInfo]]" id="1167426100">
                <_items dataType="Array" type="Duality.Components.Physics.ShapeInfo[]" id="850817352">
                  <item dataType="Struct" type="Duality.Components.Physics.PolyShapeInfo" id="3119917164">
                    <density dataType="Float">1</density>
                    <friction dataType="Float">0.3</friction>
                    <parent />
                    <restitution dataType="Float">0.3</restitution>
                    <sensor dataType="Bool">true</sensor>
                    <vertices dataType="Array" type="Duality.Vector2[]" id="2599993188">
                      <item dataType="Struct" type="Duality.Vector2">
                        <X dataType="Float">-2.588004</X>
                        <Y dataType="Float">-14.2024918</Y>
                      </item>
                      <item dataType="Struct" type="Duality.Vector2">
                        <X dataType="Float">2.1988554</X>
                        <Y dataType="Float">-14.1533995</Y>
                      </item>
                      <item dataType="Struct" type="Duality.Vector2">
                        <X dataType="Float">2.57398248</X>
                        <Y dataType="Float">13.92896</Y>
                      </item>
                      <item dataType="Struct" type="Duality.Vector2">
                        <X dataType="Float">-2.4762876</X>
                        <Y dataType="Float">13.92896</Y>
                      </item>
                    </vertices>
                  </item>
                </_items>
                <_size dataType="Int">1</_size>
                <_version dataType="Int">6</_version>
              </val>
            </item>
            <item dataType="Struct" type="Duality.Resources.PrefabLink+VarMod">
              <childIndex dataType="Struct" type="System.Collections.Generic.List`1[[System.Int32]]" id="500620066">
                <_items dataType="Array" type="System.Int32[]" id="3494886222"></_items>
                <_size dataType="Int">0</_size>
                <_version dataType="Int">1</_version>
              </childIndex>
              <componentType />
              <prop dataType="MemberInfo" id="2419346816" value="P:Duality.GameObject:ActiveSingle" />
              <val dataType="Bool">false</val>
            </item>
          </_items>
          <_size dataType="Int">2</_size>
          <_version dataType="Int">4</_version>
        </changes>
        <obj dataType="ObjectRef">3163566341</obj>
        <prefab dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Prefab]]">
          <contentPath dataType="String">Data\Bullet.Prefab.res</contentPath>
        </prefab>
      </prefabLink>
    </item>
    <item dataType="Struct" type="Duality.GameObject" id="3050105854">
      <active dataType="Bool">true</active>
      <children />
      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="934415016">
        <_items dataType="Array" type="Duality.Component[]" id="190461612" length="4">
          <item dataType="Struct" type="Duality.Components.Transform" id="1115453490">
            <active dataType="Bool">true</active>
            <angle dataType="Float">0.003061029</angle>
            <angleAbs dataType="Float">0.003061029</angleAbs>
            <angleVel dataType="Float">0</angleVel>
            <angleVelAbs dataType="Float">0</angleVelAbs>
            <deriveAngle dataType="Bool">true</deriveAngle>
            <gameobj dataType="ObjectRef">3050105854</gameobj>
            <ignoreParent dataType="Bool">false</ignoreParent>
            <parentTransform />
            <pos dataType="Struct" type="Duality.Vector3">
              <X dataType="Float">14.0360641</X>
              <Y dataType="Float">-424.964233</Y>
              <Z dataType="Float">0</Z>
            </pos>
            <posAbs dataType="Struct" type="Duality.Vector3">
              <X dataType="Float">14.0360641</X>
              <Y dataType="Float">-424.964233</Y>
              <Z dataType="Float">0</Z>
            </posAbs>
            <scale dataType="Float">0.906190157</scale>
            <scaleAbs dataType="Float">0.906190157</scaleAbs>
            <vel dataType="Struct" type="Duality.Vector3">
              <X dataType="Float">0</X>
              <Y dataType="Float">0</Y>
              <Z dataType="Float">0</Z>
            </vel>
            <velAbs dataType="Struct" type="Duality.Vector3">
              <X dataType="Float">0</X>
              <Y dataType="Float">0</Y>
              <Z dataType="Float">0</Z>
            </velAbs>
          </item>
          <item dataType="Struct" type="Duality.Components.Renderers.SpriteRenderer" id="397305126">
            <active dataType="Bool">true</active>
            <colorTint dataType="Struct" type="Duality.Drawing.ColorRgba">
              <A dataType="Byte">255</A>
              <B dataType="Byte">255</B>
              <G dataType="Byte">255</G>
              <R dataType="Byte">255</R>
            </colorTint>
            <customMat />
            <flipMode dataType="Enum" type="Duality.Components.Renderers.SpriteRenderer+FlipMode" name="None" value="0" />
            <gameobj dataType="ObjectRef">3050105854</gameobj>
            <offset dataType="Int">0</offset>
            <pixelGrid dataType="Bool">false</pixelGrid>
            <rect dataType="Struct" type="Duality.Rect">
              <H dataType="Float">38</H>
              <W dataType="Float">43</W>
              <X dataType="Float">-21.5</X>
              <Y dataType="Float">-19</Y>
            </rect>
            <rectMode dataType="Enum" type="Duality.Components.Renderers.SpriteRenderer+UVMode" name="Stretch" value="0" />
            <sharedMat dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]">
              <contentPath dataType="String">Data\ShipOne.Material.res</contentPath>
            </sharedMat>
            <visibilityGroup dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="Group0" value="1" />
          </item>
          <item dataType="Struct" type="Duality.Components.Physics.RigidBody" id="1817915082">
            <active dataType="Bool">true</active>
            <angularDamp dataType="Float">0.3</angularDamp>
            <angularVel dataType="Float">0</angularVel>
            <bodyType dataType="Enum" type="Duality.Components.Physics.BodyType" name="Dynamic" value="1" />
            <colCat dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="Cat1" value="1" />
            <colFilter />
            <colWith dataType="Enum" type="Duality.Components.Physics.CollisionCategory" name="All" value="2147483647" />
            <continous dataType="Bool">false</continous>
            <explicitInertia dataType="Float">0</explicitInertia>
            <explicitMass dataType="Float">0</explicitMass>
            <fixedAngle dataType="Bool">false</fixedAngle>
            <gameobj dataType="ObjectRef">3050105854</gameobj>
            <ignoreGravity dataType="Bool">false</ignoreGravity>
            <joints />
            <linearDamp dataType="Float">0.3</linearDamp>
            <linearVel dataType="Struct" type="Duality.Vector2">
              <X dataType="Float">0</X>
              <Y dataType="Float">0</Y>
            </linearVel>
            <revolutions dataType="Float">0</revolutions>
            <shapes dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Components.Physics.ShapeInfo]]" id="4201154186">
              <_items dataType="Array" type="Duality.Components.Physics.ShapeInfo[]" id="4135648224">
                <item dataType="Struct" type="Duality.Components.Physics.PolyShapeInfo" id="2598831068">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0.3</friction>
                  <parent dataType="ObjectRef">1817915082</parent>
                  <restitution dataType="Float">0.3</restitution>
                  <sensor dataType="Bool">false</sensor>
                  <vertices dataType="Array" type="Duality.Vector2[]" id="2590116548">
                    <item dataType="Struct" type="Duality.Vector2">
                      <X dataType="Float">-0.8737386</X>
                      <Y dataType="Float">-17.75641</Y>
                    </item>
                    <item dataType="Struct" type="Duality.Vector2">
                      <X dataType="Float">-5.22240734</X>
                      <Y dataType="Float">3.12484884</Y>
                    </item>
                    <item dataType="Struct" type="Duality.Vector2">
                      <X dataType="Float">3.10014486</X>
                      <Y dataType="Float">2.99173713</Y>
                    </item>
                  </vertices>
                </item>
                <item dataType="Struct" type="Duality.Components.Physics.PolyShapeInfo" id="2685663510">
                  <density dataType="Float">1</density>
                  <friction dataType="Float">0.3</friction>
                  <parent dataType="ObjectRef">1817915082</parent>
                  <restitution dataType="Float">0.3</restitution>
                  <sensor dataType="Bool">false</sensor>
                  <vertices dataType="Array" type="Duality.Vector2[]" id="1203451126">
                    <item dataType="Struct" type="Duality.Vector2">
                      <X dataType="Float">-20.0053482</X>
                      <Y dataType="Float">5.962738</Y>
                    </item>
                    <item dataType="Struct" type="Duality.Vector2">
                      <X dataType="Float">19.5226059</X>
                      <Y dataType="Float">5.070404</Y>
                    </item>
                    <item dataType="Struct" type="Duality.Vector2">
                      <X dataType="Float">-0.828186035</X>
                      <Y dataType="Float">17.6227722</Y>
                    </item>
                  </vertices>
                </item>
              </_items>
              <_size dataType="Int">2</_size>
              <_version dataType="Int">2</_version>
            </shapes>
          </item>
        </_items>
        <_size dataType="Int">3</_size>
        <_version dataType="Int">5</_version>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="3310331806" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Object[]" id="3936915306">
            <item dataType="ObjectRef">2719164612</item>
            <item dataType="ObjectRef">4256918422</item>
            <item dataType="ObjectRef">4161368448</item>
          </keys>
          <values dataType="Array" type="System.Object[]" id="4119420122">
            <item dataType="ObjectRef">1115453490</item>
            <item dataType="ObjectRef">397305126</item>
            <item dataType="ObjectRef">1817915082</item>
          </values>
        </body>
      </compMap>
      <compTransform dataType="ObjectRef">1115453490</compTransform>
      <identifier dataType="Struct" type="System.Guid" surrogate="true">
        <header>
          <data dataType="Array" type="System.Byte[]" id="2443550410">G6wh9+2gQ0edvuK39HXFpg==</data>
        </header>
        <body />
      </identifier>
      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
      <name dataType="String">Enemy</name>
      <parent />
      <prefabLink />
    </item>
    <item dataType="Struct" type="Duality.GameObject" id="3835831138">
      <active dataType="Bool">true</active>
      <children />
      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="337013676">
        <_items dataType="Array" type="Duality.Component[]" id="4106734820" length="4">
          <item dataType="Struct" type="Duality.Components.Transform" id="1901178774">
            <active dataType="Bool">true</active>
            <angle dataType="Float">0</angle>
            <angleAbs dataType="Float">0</angleAbs>
            <angleVel dataType="Float">0</angleVel>
            <angleVelAbs dataType="Float">0</angleVelAbs>
            <deriveAngle dataType="Bool">true</deriveAngle>
            <gameobj dataType="ObjectRef">3835831138</gameobj>
            <ignoreParent dataType="Bool">false</ignoreParent>
            <parentTransform />
            <pos dataType="Struct" type="Duality.Vector3">
              <X dataType="Float">0</X>
              <Y dataType="Float">0</Y>
              <Z dataType="Float">-500</Z>
            </pos>
            <posAbs dataType="Struct" type="Duality.Vector3">
              <X dataType="Float">0</X>
              <Y dataType="Float">0</Y>
              <Z dataType="Float">-500</Z>
            </posAbs>
            <scale dataType="Float">1</scale>
            <scaleAbs dataType="Float">1</scaleAbs>
            <vel dataType="Struct" type="Duality.Vector3">
              <X dataType="Float">0</X>
              <Y dataType="Float">0</Y>
              <Z dataType="Float">0</Z>
            </vel>
            <velAbs dataType="Struct" type="Duality.Vector3">
              <X dataType="Float">0</X>
              <Y dataType="Float">0</Y>
              <Z dataType="Float">0</Z>
            </velAbs>
          </item>
          <item dataType="Struct" type="Duality.Components.Camera" id="78139649">
            <active dataType="Bool">true</active>
            <farZ dataType="Float">100000</farZ>
            <focusDist dataType="Float">500</focusDist>
            <gameobj dataType="ObjectRef">3835831138</gameobj>
            <nearZ dataType="Float">0</nearZ>
            <passes dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Components.Camera+Pass]]" id="1668650269">
              <_items dataType="Array" type="Duality.Components.Camera+Pass[]" id="4038397158" length="4">
                <item dataType="Struct" type="Duality.Components.Camera+Pass" id="204172672">
                  <clearColor dataType="Struct" type="Duality.Drawing.ColorRgba">
                    <A dataType="Byte">0</A>
                    <B dataType="Byte">0</B>
                    <G dataType="Byte">0</G>
                    <R dataType="Byte">0</R>
                  </clearColor>
                  <clearDepth dataType="Float">1</clearDepth>
                  <clearFlags dataType="Enum" type="Duality.Drawing.ClearFlag" name="All" value="3" />
                  <input />
                  <matrixMode dataType="Enum" type="Duality.Drawing.RenderMatrix" name="PerspectiveWorld" value="0" />
                  <output dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.RenderTarget]]">
                    <contentPath />
                  </output>
                  <visibilityMask dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="AllGroups" value="2147483647" />
                </item>
                <item dataType="Struct" type="Duality.Components.Camera+Pass" id="1406912718">
                  <clearColor dataType="Struct" type="Duality.Drawing.ColorRgba">
                    <A dataType="Byte">0</A>
                    <B dataType="Byte">0</B>
                    <G dataType="Byte">0</G>
                    <R dataType="Byte">0</R>
                  </clearColor>
                  <clearDepth dataType="Float">1</clearDepth>
                  <clearFlags dataType="Enum" type="Duality.Drawing.ClearFlag" name="None" value="0" />
                  <input />
                  <matrixMode dataType="Enum" type="Duality.Drawing.RenderMatrix" name="OrthoScreen" value="1" />
                  <output dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.RenderTarget]]">
                    <contentPath />
                  </output>
                  <visibilityMask dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="All" value="4294967295" />
                </item>
              </_items>
              <_size dataType="Int">2</_size>
              <_version dataType="Int">2</_version>
            </passes>
            <perspective dataType="Enum" type="Duality.Drawing.PerspectiveMode" name="Parallax" value="1" />
            <visibilityMask dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="All" value="4294967295" />
          </item>
        </_items>
        <_size dataType="Int">2</_size>
        <_version dataType="Int">4</_version>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="1374614454" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Object[]" id="1428593126">
            <item dataType="ObjectRef">2719164612</item>
            <item dataType="Type" id="2839634304" value="Duality.Components.Camera" />
          </keys>
          <values dataType="Array" type="System.Object[]" id="3318179130">
            <item dataType="ObjectRef">1901178774</item>
            <item dataType="ObjectRef">78139649</item>
          </values>
        </body>
      </compMap>
      <compTransform dataType="ObjectRef">1901178774</compTransform>
      <identifier dataType="Struct" type="System.Guid" surrogate="true">
        <header>
          <data dataType="Array" type="System.Byte[]" id="3069705062">8mNdFP8BhUCkSPG6sxtEFQ==</data>
        </header>
        <body />
      </identifier>
      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
      <name dataType="String">Camera</name>
      <parent />
      <prefabLink />
    </item>
    <item dataType="Struct" type="Duality.GameObject" id="1158630208">
      <active dataType="Bool">true</active>
      <children />
      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="1753888006">
        <_items dataType="Array" type="Duality.Component[]" id="52455808" length="8">
          <item dataType="Struct" type="Duality.Components.Transform" id="3518945140">
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">1158630208</gameobj>
          </item>
          <item dataType="Struct" type="Duality.Components.Renderers.SpriteRenderer" id="2800796776">
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">1158630208</gameobj>
          </item>
          <item dataType="Struct" type="Duality.Components.Physics.RigidBody" id="4221406732">
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">1158630208</gameobj>
          </item>
          <item dataType="Struct" type="naves.Player" id="243221518">
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">1158630208</gameobj>
          </item>
          <item dataType="Struct" type="Duality.Components.Renderers.TextRenderer" id="2901259030">
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">1158630208</gameobj>
          </item>
        </_items>
        <_size dataType="Int">5</_size>
        <_version dataType="Int">5</_version>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="1293847866" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Object[]" id="2458660980">
            <item dataType="ObjectRef">2719164612</item>
            <item dataType="ObjectRef">4256918422</item>
            <item dataType="ObjectRef">4161368448</item>
            <item dataType="ObjectRef">431813154</item>
            <item dataType="ObjectRef">308430044</item>
          </keys>
          <values dataType="Array" type="System.Object[]" id="2542280182">
            <item dataType="ObjectRef">3518945140</item>
            <item dataType="ObjectRef">2800796776</item>
            <item dataType="ObjectRef">4221406732</item>
            <item dataType="ObjectRef">243221518</item>
            <item dataType="ObjectRef">2901259030</item>
          </values>
        </body>
      </compMap>
      <compTransform dataType="ObjectRef">3518945140</compTransform>
      <identifier dataType="Struct" type="System.Guid" surrogate="true">
        <header>
          <data dataType="Array" type="System.Byte[]" id="805376592">yA20O7si6EaES1xpzuDmYA==</data>
        </header>
        <body />
      </identifier>
      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
      <name dataType="String">ShipOne</name>
      <parent />
      <prefabLink dataType="Struct" type="Duality.Resources.PrefabLink" id="2244692870">
        <changes />
        <obj dataType="ObjectRef">1158630208</obj>
        <prefab dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Prefab]]">
          <contentPath dataType="String">Data\Player.Prefab.res</contentPath>
        </prefab>
      </prefabLink>
    </item>
    <item dataType="Struct" type="Duality.GameObject" id="2533080139">
      <active dataType="Bool">true</active>
      <children />
      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="1545184057">
        <_items dataType="Array" type="Duality.Component[]" id="3114927822" length="4">
          <item dataType="Struct" type="Duality.Components.Transform" id="598427775">
            <active dataType="Bool">true</active>
            <angle dataType="Float">0</angle>
            <angleAbs dataType="Float">0</angleAbs>
            <angleVel dataType="Float">0</angleVel>
            <angleVelAbs dataType="Float">0</angleVelAbs>
            <deriveAngle dataType="Bool">true</deriveAngle>
            <gameobj dataType="ObjectRef">2533080139</gameobj>
            <ignoreParent dataType="Bool">false</ignoreParent>
            <parentTransform />
            <pos dataType="Struct" type="Duality.Vector3">
              <X dataType="Float">0</X>
              <Y dataType="Float">0</Y>
              <Z dataType="Float">0</Z>
            </pos>
            <posAbs dataType="Struct" type="Duality.Vector3">
              <X dataType="Float">0</X>
              <Y dataType="Float">0</Y>
              <Z dataType="Float">0</Z>
            </posAbs>
            <scale dataType="Float">1</scale>
            <scaleAbs dataType="Float">1</scaleAbs>
            <vel dataType="Struct" type="Duality.Vector3">
              <X dataType="Float">0</X>
              <Y dataType="Float">0</Y>
              <Z dataType="Float">0</Z>
            </vel>
            <velAbs dataType="Struct" type="Duality.Vector3">
              <X dataType="Float">0</X>
              <Y dataType="Float">0</Y>
              <Z dataType="Float">0</Z>
            </velAbs>
          </item>
          <item dataType="Struct" type="Duality.Components.Renderers.TextRenderer" id="4275708961">
            <active dataType="Bool">true</active>
            <blockAlign dataType="Enum" type="Duality.Alignment" name="Center" value="0" />
            <colorTint dataType="Struct" type="Duality.Drawing.ColorRgba">
              <A dataType="Byte">255</A>
              <B dataType="Byte">255</B>
              <G dataType="Byte">255</G>
              <R dataType="Byte">255</R>
            </colorTint>
            <customMat />
            <gameobj dataType="ObjectRef">2533080139</gameobj>
            <iconMat dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Material]]">
              <contentPath />
            </iconMat>
            <offset dataType="Int">0</offset>
            <text dataType="Struct" type="Duality.Drawing.FormattedText" id="892426129">
              <flowAreas />
              <fonts dataType="Array" type="Duality.ContentRef`1[[Duality.Resources.Font]][]" id="571820526">
                <item dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Font]]">
                  <contentPath dataType="String">Default:Font:GenericMonospace10</contentPath>
                </item>
              </fonts>
              <icons />
              <lineAlign dataType="Enum" type="Duality.Alignment" name="Left" value="1" />
              <maxHeight dataType="Int">0</maxHeight>
              <maxWidth dataType="Int">0</maxWidth>
              <sourceText dataType="String">Hello World</sourceText>
              <wrapMode dataType="Enum" type="Duality.Drawing.FormattedText+WrapMode" name="Word" value="1" />
            </text>
            <visibilityGroup dataType="Enum" type="Duality.Drawing.VisibilityFlag" name="Group0" value="1" />
          </item>
          <item dataType="Struct" type="naves.ScoreText" id="682154827">
            <active dataType="Bool">true</active>
            <camera dataType="ObjectRef">3835831138</camera>
            <gameobj dataType="ObjectRef">2533080139</gameobj>
          </item>
        </_items>
        <_size dataType="Int">3</_size>
        <_version dataType="Int">3</_version>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="1492368128" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Object[]" id="2034562195">
            <item dataType="ObjectRef">2719164612</item>
            <item dataType="ObjectRef">308430044</item>
            <item dataType="Type" id="2072852710" value="naves.ScoreText" />
          </keys>
          <values dataType="Array" type="System.Object[]" id="2625496824">
            <item dataType="ObjectRef">598427775</item>
            <item dataType="ObjectRef">4275708961</item>
            <item dataType="ObjectRef">682154827</item>
          </values>
        </body>
      </compMap>
      <compTransform dataType="ObjectRef">598427775</compTransform>
      <identifier dataType="Struct" type="System.Guid" surrogate="true">
        <header>
          <data dataType="Array" type="System.Byte[]" id="2030241657">dPwQHuvqTECxOWIksrSMcw==</data>
        </header>
        <body />
      </identifier>
      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
      <name dataType="String">TextRenderer</name>
      <parent />
      <prefabLink />
    </item>
    <item dataType="Struct" type="Duality.GameObject" id="3707805092">
      <active dataType="Bool">true</active>
      <children />
      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="2129557274">
        <_items dataType="Array" type="Duality.Component[]" id="3619362176" length="8">
          <item dataType="Struct" type="Duality.Components.Transform" id="1773152728">
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">3707805092</gameobj>
          </item>
          <item dataType="Struct" type="Duality.Components.Renderers.SpriteRenderer" id="1055004364">
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">3707805092</gameobj>
          </item>
          <item dataType="Struct" type="Duality.Components.Physics.RigidBody" id="2475614320">
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">3707805092</gameobj>
          </item>
          <item dataType="Struct" type="naves.Player" id="2792396402">
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">3707805092</gameobj>
          </item>
          <item dataType="Struct" type="Duality.Components.Renderers.TextRenderer" id="1155466618">
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">3707805092</gameobj>
          </item>
        </_items>
        <_size dataType="Int">5</_size>
        <_version dataType="Int">5</_version>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="3997657402" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Object[]" id="2238387808">
            <item dataType="ObjectRef">2719164612</item>
            <item dataType="ObjectRef">4256918422</item>
            <item dataType="ObjectRef">4161368448</item>
            <item dataType="ObjectRef">431813154</item>
            <item dataType="ObjectRef">308430044</item>
          </keys>
          <values dataType="Array" type="System.Object[]" id="2214911630">
            <item dataType="ObjectRef">1773152728</item>
            <item dataType="ObjectRef">1055004364</item>
            <item dataType="ObjectRef">2475614320</item>
            <item dataType="ObjectRef">2792396402</item>
            <item dataType="ObjectRef">1155466618</item>
          </values>
        </body>
      </compMap>
      <compTransform dataType="ObjectRef">1773152728</compTransform>
      <identifier dataType="Struct" type="System.Guid" surrogate="true">
        <header>
          <data dataType="Array" type="System.Byte[]" id="3338783868">5Nv7pvv94UawWIa9TVAOoQ==</data>
        </header>
        <body />
      </identifier>
      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
      <name dataType="String">ShipOne</name>
      <parent />
      <prefabLink dataType="Struct" type="Duality.Resources.PrefabLink" id="3153289626">
        <changes />
        <obj dataType="ObjectRef">3707805092</obj>
        <prefab dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Prefab]]">
          <contentPath dataType="String">Data\Player.Prefab.res</contentPath>
        </prefab>
      </prefabLink>
    </item>
    <item dataType="Struct" type="Duality.GameObject" id="3908543836">
      <active dataType="Bool">true</active>
      <children />
      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="604681266">
        <_items dataType="Array" type="Duality.Component[]" id="1089425872" length="8">
          <item dataType="Struct" type="Duality.Components.Transform" id="1973891472">
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">3908543836</gameobj>
          </item>
          <item dataType="Struct" type="Duality.Components.Renderers.SpriteRenderer" id="1255743108">
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">3908543836</gameobj>
          </item>
          <item dataType="Struct" type="Duality.Components.Physics.RigidBody" id="2676353064">
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">3908543836</gameobj>
          </item>
          <item dataType="Struct" type="naves.Player" id="2993135146">
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">3908543836</gameobj>
          </item>
          <item dataType="Struct" type="Duality.Components.Renderers.TextRenderer" id="1356205362">
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">3908543836</gameobj>
          </item>
        </_items>
        <_size dataType="Int">5</_size>
        <_version dataType="Int">5</_version>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="3403326794" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Object[]" id="2143640360">
            <item dataType="ObjectRef">2719164612</item>
            <item dataType="ObjectRef">4256918422</item>
            <item dataType="ObjectRef">4161368448</item>
            <item dataType="ObjectRef">431813154</item>
            <item dataType="ObjectRef">308430044</item>
          </keys>
          <values dataType="Array" type="System.Object[]" id="3511333022">
            <item dataType="ObjectRef">1973891472</item>
            <item dataType="ObjectRef">1255743108</item>
            <item dataType="ObjectRef">2676353064</item>
            <item dataType="ObjectRef">2993135146</item>
            <item dataType="ObjectRef">1356205362</item>
          </values>
        </body>
      </compMap>
      <compTransform dataType="ObjectRef">1973891472</compTransform>
      <identifier dataType="Struct" type="System.Guid" surrogate="true">
        <header>
          <data dataType="Array" type="System.Byte[]" id="2509377556">weSnVVCrl0GmlhYsh8z8Cg==</data>
        </header>
        <body />
      </identifier>
      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
      <name dataType="String">ShipOne</name>
      <parent />
      <prefabLink dataType="Struct" type="Duality.Resources.PrefabLink" id="2595208322">
        <changes />
        <obj dataType="ObjectRef">3908543836</obj>
        <prefab dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Prefab]]">
          <contentPath dataType="String">Data\Player.Prefab.res</contentPath>
        </prefab>
      </prefabLink>
    </item>
    <item dataType="Struct" type="Duality.GameObject" id="3628981096">
      <active dataType="Bool">true</active>
      <children />
      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="2788051118">
        <_items dataType="Array" type="Duality.Component[]" id="95029584" length="8">
          <item dataType="Struct" type="Duality.Components.Transform" id="1694328732">
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">3628981096</gameobj>
          </item>
          <item dataType="Struct" type="Duality.Components.Renderers.SpriteRenderer" id="976180368">
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">3628981096</gameobj>
          </item>
          <item dataType="Struct" type="Duality.Components.Physics.RigidBody" id="2396790324">
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">3628981096</gameobj>
          </item>
          <item dataType="Struct" type="naves.Player" id="2713572406">
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">3628981096</gameobj>
          </item>
          <item dataType="Struct" type="Duality.Components.Renderers.TextRenderer" id="1076642622">
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">3628981096</gameobj>
          </item>
        </_items>
        <_size dataType="Int">5</_size>
        <_version dataType="Int">5</_version>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="3533147850" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Object[]" id="1480763692">
            <item dataType="ObjectRef">2719164612</item>
            <item dataType="ObjectRef">4256918422</item>
            <item dataType="ObjectRef">4161368448</item>
            <item dataType="ObjectRef">431813154</item>
            <item dataType="ObjectRef">308430044</item>
          </keys>
          <values dataType="Array" type="System.Object[]" id="2698308022">
            <item dataType="ObjectRef">1694328732</item>
            <item dataType="ObjectRef">976180368</item>
            <item dataType="ObjectRef">2396790324</item>
            <item dataType="ObjectRef">2713572406</item>
            <item dataType="ObjectRef">1076642622</item>
          </values>
        </body>
      </compMap>
      <compTransform dataType="ObjectRef">1694328732</compTransform>
      <identifier dataType="Struct" type="System.Guid" surrogate="true">
        <header>
          <data dataType="Array" type="System.Byte[]" id="3405439864">3JezHv42HUyLdfCEdEUxqQ==</data>
        </header>
        <body />
      </identifier>
      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
      <name dataType="String">ShipOne</name>
      <parent />
      <prefabLink dataType="Struct" type="Duality.Resources.PrefabLink" id="1604808734">
        <changes />
        <obj dataType="ObjectRef">3628981096</obj>
        <prefab dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Prefab]]">
          <contentPath dataType="String">Data\Player.Prefab.res</contentPath>
        </prefab>
      </prefabLink>
    </item>
    <item dataType="Struct" type="Duality.GameObject" id="4206543416">
      <active dataType="Bool">true</active>
      <children />
      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="1627620574">
        <_items dataType="Array" type="Duality.Component[]" id="1768004368" length="8">
          <item dataType="Struct" type="Duality.Components.Transform" id="2271891052">
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">4206543416</gameobj>
          </item>
          <item dataType="Struct" type="Duality.Components.Renderers.SpriteRenderer" id="1553742688">
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">4206543416</gameobj>
          </item>
          <item dataType="Struct" type="Duality.Components.Physics.RigidBody" id="2974352644">
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">4206543416</gameobj>
          </item>
          <item dataType="Struct" type="naves.Player" id="3291134726">
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">4206543416</gameobj>
          </item>
          <item dataType="Struct" type="Duality.Components.Renderers.TextRenderer" id="1654204942">
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">4206543416</gameobj>
          </item>
        </_items>
        <_size dataType="Int">5</_size>
        <_version dataType="Int">5</_version>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="2394050314" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Object[]" id="3642248956">
            <item dataType="ObjectRef">2719164612</item>
            <item dataType="ObjectRef">4256918422</item>
            <item dataType="ObjectRef">4161368448</item>
            <item dataType="ObjectRef">431813154</item>
            <item dataType="ObjectRef">308430044</item>
          </keys>
          <values dataType="Array" type="System.Object[]" id="2476113302">
            <item dataType="ObjectRef">2271891052</item>
            <item dataType="ObjectRef">1553742688</item>
            <item dataType="ObjectRef">2974352644</item>
            <item dataType="ObjectRef">3291134726</item>
            <item dataType="ObjectRef">1654204942</item>
          </values>
        </body>
      </compMap>
      <compTransform dataType="ObjectRef">2271891052</compTransform>
      <identifier dataType="Struct" type="System.Guid" surrogate="true">
        <header>
          <data dataType="Array" type="System.Byte[]" id="1208530856">7YUmcpxBEEefX8nzL4kjxQ==</data>
        </header>
        <body />
      </identifier>
      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
      <name dataType="String">ShipOne</name>
      <parent />
      <prefabLink dataType="Struct" type="Duality.Resources.PrefabLink" id="872001326">
        <changes />
        <obj dataType="ObjectRef">4206543416</obj>
        <prefab dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Prefab]]">
          <contentPath dataType="String">Data\Player.Prefab.res</contentPath>
        </prefab>
      </prefabLink>
    </item>
    <item dataType="Struct" type="Duality.GameObject" id="1415951427">
      <active dataType="Bool">true</active>
      <children />
      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="3198833009">
        <_items dataType="Array" type="Duality.Component[]" id="3972521134" length="8">
          <item dataType="Struct" type="Duality.Components.Transform" id="3776266359">
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">1415951427</gameobj>
          </item>
          <item dataType="Struct" type="Duality.Components.Renderers.SpriteRenderer" id="3058117995">
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">1415951427</gameobj>
          </item>
          <item dataType="Struct" type="Duality.Components.Physics.RigidBody" id="183760655">
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">1415951427</gameobj>
          </item>
          <item dataType="Struct" type="naves.Player" id="500542737">
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">1415951427</gameobj>
          </item>
          <item dataType="Struct" type="Duality.Components.Renderers.TextRenderer" id="3158580249">
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">1415951427</gameobj>
          </item>
        </_items>
        <_size dataType="Int">5</_size>
        <_version dataType="Int">5</_version>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="4094933216" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Object[]" id="1484588763">
            <item dataType="ObjectRef">2719164612</item>
            <item dataType="ObjectRef">4256918422</item>
            <item dataType="ObjectRef">4161368448</item>
            <item dataType="ObjectRef">431813154</item>
            <item dataType="ObjectRef">308430044</item>
          </keys>
          <values dataType="Array" type="System.Object[]" id="2978496872">
            <item dataType="ObjectRef">3776266359</item>
            <item dataType="ObjectRef">3058117995</item>
            <item dataType="ObjectRef">183760655</item>
            <item dataType="ObjectRef">500542737</item>
            <item dataType="ObjectRef">3158580249</item>
          </values>
        </body>
      </compMap>
      <compTransform dataType="ObjectRef">3776266359</compTransform>
      <identifier dataType="Struct" type="System.Guid" surrogate="true">
        <header>
          <data dataType="Array" type="System.Byte[]" id="2865025041">h/PMCKmCoEeFid5kMj7cZA==</data>
        </header>
        <body />
      </identifier>
      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
      <name dataType="String">ShipOne</name>
      <parent />
      <prefabLink dataType="Struct" type="Duality.Resources.PrefabLink" id="1245855523">
        <changes />
        <obj dataType="ObjectRef">1415951427</obj>
        <prefab dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Prefab]]">
          <contentPath dataType="String">Data\Player.Prefab.res</contentPath>
        </prefab>
      </prefabLink>
    </item>
    <item dataType="Struct" type="Duality.GameObject" id="3223369701">
      <active dataType="Bool">true</active>
      <children />
      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="3521033623">
        <_items dataType="Array" type="Duality.Component[]" id="2463985934" length="8">
          <item dataType="Struct" type="Duality.Components.Transform" id="1288717337">
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">3223369701</gameobj>
          </item>
          <item dataType="Struct" type="Duality.Components.Renderers.SpriteRenderer" id="570568973">
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">3223369701</gameobj>
          </item>
          <item dataType="Struct" type="Duality.Components.Physics.RigidBody" id="1991178929">
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">3223369701</gameobj>
          </item>
          <item dataType="Struct" type="naves.Player" id="2307961011">
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">3223369701</gameobj>
          </item>
          <item dataType="Struct" type="Duality.Components.Renderers.TextRenderer" id="671031227">
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">3223369701</gameobj>
          </item>
        </_items>
        <_size dataType="Int">5</_size>
        <_version dataType="Int">5</_version>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="2400732864" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Object[]" id="712436509">
            <item dataType="ObjectRef">2719164612</item>
            <item dataType="ObjectRef">4256918422</item>
            <item dataType="ObjectRef">4161368448</item>
            <item dataType="ObjectRef">431813154</item>
            <item dataType="ObjectRef">308430044</item>
          </keys>
          <values dataType="Array" type="System.Object[]" id="3085784824">
            <item dataType="ObjectRef">1288717337</item>
            <item dataType="ObjectRef">570568973</item>
            <item dataType="ObjectRef">1991178929</item>
            <item dataType="ObjectRef">2307961011</item>
            <item dataType="ObjectRef">671031227</item>
          </values>
        </body>
      </compMap>
      <compTransform dataType="ObjectRef">1288717337</compTransform>
      <identifier dataType="Struct" type="System.Guid" surrogate="true">
        <header>
          <data dataType="Array" type="System.Byte[]" id="2685841847">LfIglAC1ZUWdC+FSDhCTrQ==</data>
        </header>
        <body />
      </identifier>
      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
      <name dataType="String">ShipOne</name>
      <parent />
      <prefabLink dataType="Struct" type="Duality.Resources.PrefabLink" id="2493211445">
        <changes />
        <obj dataType="ObjectRef">3223369701</obj>
        <prefab dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Prefab]]">
          <contentPath dataType="String">Data\Player.Prefab.res</contentPath>
        </prefab>
      </prefabLink>
    </item>
    <item dataType="Struct" type="Duality.GameObject" id="510968713">
      <active dataType="Bool">true</active>
      <children />
      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="1678757067">
        <_items dataType="Array" type="Duality.Component[]" id="560665590" length="8">
          <item dataType="Struct" type="Duality.Components.Transform" id="2871283645">
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">510968713</gameobj>
          </item>
          <item dataType="Struct" type="Duality.Components.Renderers.SpriteRenderer" id="2153135281">
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">510968713</gameobj>
          </item>
          <item dataType="Struct" type="Duality.Components.Physics.RigidBody" id="3573745237">
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">510968713</gameobj>
          </item>
          <item dataType="Struct" type="naves.Player" id="3890527319">
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">510968713</gameobj>
          </item>
          <item dataType="Struct" type="Duality.Components.Renderers.TextRenderer" id="2253597535">
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">510968713</gameobj>
          </item>
        </_items>
        <_size dataType="Int">5</_size>
        <_version dataType="Int">5</_version>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="3266379848" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Object[]" id="3972973281">
            <item dataType="ObjectRef">2719164612</item>
            <item dataType="ObjectRef">4256918422</item>
            <item dataType="ObjectRef">4161368448</item>
            <item dataType="ObjectRef">431813154</item>
            <item dataType="ObjectRef">308430044</item>
          </keys>
          <values dataType="Array" type="System.Object[]" id="2025467424">
            <item dataType="ObjectRef">2871283645</item>
            <item dataType="ObjectRef">2153135281</item>
            <item dataType="ObjectRef">3573745237</item>
            <item dataType="ObjectRef">3890527319</item>
            <item dataType="ObjectRef">2253597535</item>
          </values>
        </body>
      </compMap>
      <compTransform dataType="ObjectRef">2871283645</compTransform>
      <identifier dataType="Struct" type="System.Guid" surrogate="true">
        <header>
          <data dataType="Array" type="System.Byte[]" id="198578291">VI2u1tocSk6xGdRNT4Bjlw==</data>
        </header>
        <body />
      </identifier>
      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
      <name dataType="String">ShipOne</name>
      <parent />
      <prefabLink dataType="Struct" type="Duality.Resources.PrefabLink" id="2763304833">
        <changes />
        <obj dataType="ObjectRef">510968713</obj>
        <prefab dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Prefab]]">
          <contentPath dataType="String">Data\Player.Prefab.res</contentPath>
        </prefab>
      </prefabLink>
    </item>
    <item dataType="Struct" type="Duality.GameObject" id="2361542199">
      <active dataType="Bool">true</active>
      <children />
      <compList dataType="Struct" type="System.Collections.Generic.List`1[[Duality.Component]]" id="1153188981">
        <_items dataType="Array" type="Duality.Component[]" id="279416950" length="8">
          <item dataType="Struct" type="Duality.Components.Transform" id="426889835">
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">2361542199</gameobj>
          </item>
          <item dataType="Struct" type="Duality.Components.Renderers.SpriteRenderer" id="4003708767">
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">2361542199</gameobj>
          </item>
          <item dataType="Struct" type="Duality.Components.Physics.RigidBody" id="1129351427">
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">2361542199</gameobj>
          </item>
          <item dataType="Struct" type="naves.Player" id="1446133509">
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">2361542199</gameobj>
          </item>
          <item dataType="Struct" type="Duality.Components.Renderers.TextRenderer" id="4104171021">
            <active dataType="Bool">true</active>
            <gameobj dataType="ObjectRef">2361542199</gameobj>
          </item>
        </_items>
        <_size dataType="Int">5</_size>
        <_version dataType="Int">5</_version>
      </compList>
      <compMap dataType="Struct" type="System.Collections.Generic.Dictionary`2[[System.Type],[Duality.Component]]" id="167813832" surrogate="true">
        <header />
        <body>
          <keys dataType="Array" type="System.Object[]" id="3225632991">
            <item dataType="ObjectRef">2719164612</item>
            <item dataType="ObjectRef">4256918422</item>
            <item dataType="ObjectRef">4161368448</item>
            <item dataType="ObjectRef">431813154</item>
            <item dataType="ObjectRef">308430044</item>
          </keys>
          <values dataType="Array" type="System.Object[]" id="3624894752">
            <item dataType="ObjectRef">426889835</item>
            <item dataType="ObjectRef">4003708767</item>
            <item dataType="ObjectRef">1129351427</item>
            <item dataType="ObjectRef">1446133509</item>
            <item dataType="ObjectRef">4104171021</item>
          </values>
        </body>
      </compMap>
      <compTransform dataType="ObjectRef">426889835</compTransform>
      <identifier dataType="Struct" type="System.Guid" surrogate="true">
        <header>
          <data dataType="Array" type="System.Byte[]" id="2693314381">yAlu1ayXE0+S5c4glF2s7A==</data>
        </header>
        <body />
      </identifier>
      <initState dataType="Enum" type="Duality.InitState" name="Initialized" value="1" />
      <name dataType="String">ShipOne</name>
      <parent />
      <prefabLink dataType="Struct" type="Duality.Resources.PrefabLink" id="4285329087">
        <changes />
        <obj dataType="ObjectRef">2361542199</obj>
        <prefab dataType="Struct" type="Duality.ContentRef`1[[Duality.Resources.Prefab]]">
          <contentPath dataType="String">Data\Player.Prefab.res</contentPath>
        </prefab>
      </prefabLink>
    </item>
    <item dataType="ObjectRef">3275994880</item>
    <item dataType="ObjectRef">2907105772</item>
    <item dataType="ObjectRef">1527328432</item>
    <item dataType="ObjectRef">911355426</item>
  </serializeObj>
  <visibilityStrategy dataType="Struct" type="Duality.Components.DefaultRendererVisibilityStrategy" id="2035693768" />
</root>
<!-- XmlFormatterBase Document Separator -->
