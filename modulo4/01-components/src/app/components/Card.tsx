// app/index.tsx — agrega al archivo existente
import { ReactNode } from 'react'
//import { View } from 'react-native'
import { StyleSheet, Text, View } from 'react-native'


// ─── Paso 2 — children y composición ────────────────────────────────

interface CardProps {
  titulo: string
  subtitulo?: string
  children: ReactNode,
  Color?: string
}

export function Card({ titulo, subtitulo, children, Color }: CardProps) {
  return (
    <View style={styleCard .card}>
      <View style={styleCard .cardCabecera, {backgroundColor: color ?? '#1565c0'}}>
        <Text style={styleCard .cardTitulo}>{titulo}</Text>
        {subtitulo && (
          <Text style={styleCard .cardSubtitulo}>{subtitulo}</Text>
        )}
      </View>
      <View style={styleCard .cardCuerpo}>{children}</View>
    </View>
  )
}

export function FilaInfo({ etiqueta, valor }: { etiqueta: string; valor: string }) {
  return (
    <View style={styleCard.fila}>
      <Text style={styleCard .etiqueta}>{etiqueta}</Text>
      <Text style={styleCard .valor}>{valor}</Text>
    </View>
  )
}

function Paso2() {
  return (
    <View style={styleCard .fondo}>
      <Text style={styleCard .titulo}>Detalle de nodo</Text>

      <Card titulo="web-01" subtitulo="Servidor web principal">
        <FilaInfo etiqueta="IP" valor="10.0.2.10" />
        <FilaInfo etiqueta="Puerto" valor="22 (SSH)" />
        <FilaInfo etiqueta="OS" valor="Ubuntu 24.04 LTS" />
        <FilaInfo etiqueta="CPU" valor="4 vCPU · 48%" />
        <FilaInfo etiqueta="RAM" valor="8 GB · 3.1 GB usados" />
      </Card>

      <Card titulo="Disco" Color= '#21cf70'>
        <FilaInfo etiqueta="HTTP" valor="142 req/s" />
        <FilaInfo etiqueta="SSH" valor="2 sesiones" />
        <FilaInfo etiqueta="Último acceso" valor="hace 3 minutos" />
      </Card>
    </View>
  )
}

const styleCard = StyleSheet.create({
  fondo: {
    flex: 1,
    backgroundColor: '#f0f4f8',
    padding: 20,
    paddingTop: 60,
    gap: 16,
  },
 
  card: {
    backgroundColor: '#ffffff',
    borderRadius: 12,
    overflow: 'hidden',
    shadowColor: '#000',
    shadowOpacity: 0.07,
    shadowRadius: 6,
    shadowOffset: { width: 0, height: 2 },
    elevation: 3,
  },
  cardCabecera: {
    backgroundColor: '#1565c0',
    paddingHorizontal: 16,
    paddingVertical: 12,
    gap: 2,
  },
  cardTitulo: {
    fontSize: 16,
    fontWeight: '700',
    color: '#ffffff',
  },
  cardSubtitulo: {
    fontSize: 12,
    color: '#bbdefb',
  },
  cardCuerpo: {
    padding: 12,
    gap: 8,
  },
 
})